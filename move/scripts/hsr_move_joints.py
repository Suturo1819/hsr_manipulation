#! /usr/bin/env python

import roslib
roslib.load_manifest('move')
import rospy
import actionlib
from hsr_move import HsrMove
from suturo_manipulation_msgs.msg import DoMoveJointsAction as sut_action_msg
import control_msgs
from tf2_msgs.msg import TFMessage
from utils import Utils
from hsr_gripper import HsrGripper 
from hsr_omnibase import HsrOmnibase
import numpy as np

class DoMoveJointsServer:

  _feedback = sut_action_msg.DoMoveJointsFeedback()
  _result = sut_action_msg.DoMoveJointsResult()
  
  def __init__(self):
    self.server = actionlib.SimpleActionServer('do_move_joints', DoMoveJointsAction, self.execute, False)
    self.server.start()
    self.mvt = HsrMove() # ++++++
    self.hg = HsrGripper()
    self.base = HsrOmnibase()
    #success_omnibase = self.base.move_base(0.05, 0)
    success_gripper = self.hg.move_gripper(1.2, 0, 0.1)
    #self.mvt.init_robot()
    self.utils = Utils()
    
  
  def execute(self, list_desired_joints):
    # Do lots of awesome groundbreaking robot stuff here
    self.mvt.init_robot()
    #self.mvt.end_pose_robot()
    goal_msg= list_desired_joints.goal_msg
    #print joint_names
    #print joint_values
    #print self.object_pose
    if goal_msg == "move":
      joint_names = list_desired_joints.desired_joints_values.joint_names
      joint_values = list_desired_joints.desired_joints_values.desired.positions
      self.do_move_joints(joint_names, joint_values) # +++++
      self.server.set_succeeded(self._result)
    elif goal_msg == "grip":
      object_pose= []
      object_pose.append(list_desired_joints.object_pose.position.x)
      object_pose.append(list_desired_joints.object_pose.position.y)
      object_pose.append(list_desired_joints.object_pose.position.z)
      #self.list_pose= []
      # do move Torso
      joint_names= ["arm_flex_joint", "wrist_flex_joint"]
      list_links =  ["arm_flex_link", "wrist_flex_link", "hand_palm_link"]
      width_object = float(list_desired_joints.width)
      
      list_poses = [self.mvt.get_pose(x) for x in list_links]
      print list_poses
      arm_flex_value = self.mvt.get_flex_values(list_poses[0], list_poses[1], object_pose)
      print arm_flex_value
      wrist_value = self.mvt.get_flex_values(list_poses[1], list_poses[2], object_pose)
      print wrist_value
      joint_values = [- arm_flex_value , -1.919 + wrist_value]
      print(" done grip")
      
      self.do_move_joints(joint_names, joint_values) # +++++
      
      # do move arm_flex
      new_hand_palm_link_pose = self.mvt.get_pose("hand_palm_link")
      new_arm_flex_link_pose = self.mvt.get_pose("arm_flex_link")
      lift_value = self.mvt.get_arm_lift_up(new_arm_flex_link_pose,new_hand_palm_link_pose, object_pose)
      s= self.mvt.move_joint("arm_lift_joint", float(lift_value))
      
      # go to object
      new_hand_palm_link_pose = self.mvt.get_pose("hand_palm_link")
      print("The new position of hand palm link is :")
      print new_hand_palm_link_pose
      print("The position of object is :")
      print object_pose
      distance= self.mvt.get_distance(np.array(new_hand_palm_link_pose), np.array(object_pose))
      print("The distance")
      print distance
      success_omnibase = self.base.move_base(distance, 0)
      
      # grasp
      print("Width")
      print width_object
      success_gripper = self.hg.move_gripper(width_object, 0, 0.1)
      
      
      # go back
      success_omnibase = self.base.move_base(0, 0)
      
      # let object
      #success_gripper = self.hg.move_gripper(1.2, 0, 0.1)
      
      # end
      self.mvt.end_pose_robot()
      self.server.set_succeeded(self._result)
      
      #self.do_move_joints(["arm_lift_joint","arm_flex_joint", "wrist_flex_joint"], self.get_joint_values(self.list_pose, object_pose))
    else:
      print("No found goal_msg command")
    #goal.result_msg = " Move is executed "
    #self.server.set_succeeded()
    
  def do_move_joints(self, joint_names, joint_values):
    count_success= 0
    if(len(joint_names) == len(joint_values)) and len(joint_names) > 0:
      for x in range(len(joint_names)):
        if self.server.is_preempt_requested():
          rospy.loginfo('the server do_move_joints is Preempted')
          self.server.set_preempted()
          success = False
          break
          
        success = self.mvt.move_joint(joint_names[x], joint_values[x])
        
        if success:
          count_success = count_success + 1
          self._feedback.feedback_msg = float(count_success/len(joint_names))
          self._feedback.successful_joints_values.joint_names.append(joint_names[x])
          self._feedback.successful_joints_values.actual.positions.append(joint_values[x])
          rospy.loginfo(str(joint_names[x]) + " is moved to " + str(joint_values[x]))
          self.server.publish_feedback(self._feedback)
      
      if count_success == len(joint_names) and success:
        print ("End move joint")
        self._result.result_msg = ("all joints are moved")
        self._result.current_joints_values.joint_names = joint_names
        self._result.current_joints_values.actual.positions = joint_values
        rospy.loginfo('all joints are moved with success')
        
    
    else:
      print ("Joint list is empty")
      success = False
      
if __name__ == '__main__':
  rospy.init_node('do_move_joints_server')
  server = DoMoveJointsServer()
  rospy.spin()
