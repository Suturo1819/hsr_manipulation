#! /usr/bin/env python

import roslib
roslib.load_manifest('move')
import rospy
import actionlib
from hsr_move import HsrMove
import suturo_manipulation_msgs.msg
from suturo_manipulation_msgs.msg import DoMoveJointsAction
import control_msgs
from tf2_msgs.msg import TFMessage
from utils import Utils
from hsr_gripper import HsrGripper 
from hsr_omnibase import HsrOmnibase
import numpy as np

class DoMoveJointsServer:

  _feedback = suturo_manipulation_msgs.msg.DoMoveJointsFeedback()
  _result = suturo_manipulation_msgs.msg.DoMoveJointsResult()
  
  def __init__(self):
    self.server = actionlib.SimpleActionServer('do_move_joints', DoMoveJointsAction, self.execute, False)
    self.server.start()
    self.mvt = HsrMove() # ++++++
    self.hg = HsrGripper()
    self.base = HsrOmnibase()
    success_gripper = self.hg.move_gripper(0.05, 0, 0.1)
    #self.mvt.init_robot()
    self.utils = Utils()
    
  
  def execute(self, list_desired_joints):
    # Do lots of awesome groundbreaking robot stuff here
    self.mvt.init_robot()
    success_gripper = self.hg.move_gripper(0.05, 0, 0.1)
    goal_msg= list_desired_joints.goal_msg
    if goal_msg == "move":
      joint_names = list_desired_joints.desired_joints_values.joint_names
      joint_values = list_desired_joints.desired_joints_values.desired.positions
      self.do_move_joints(joint_names, joint_values) # +++++
      self.server.set_succeeded(self._result)
    elif goal_msg == "grip":
      x_start,y_start, r_start =self.mvt.get_current_base_position()
      print ("start pose")
      print(x_start, y_start, r_start)
      # set grasp pose
      arm_lift_value = self.handle_grasp_pose(list_desired_joints)
      # go to object
      self.handle_go_to_object(list_desired_joints)
      # grasp
      self.handle_gripper(list_desired_joints, arm_lift_value)
      # go back
      success_omnibase = self.base.move_base(x_start, y_start, r_start)
      # end pose
      self.mvt.end_pose_robot()
      # let object
      #success_gripper = self.hg.move_gripper(1.2, 0, 0.1)
      # end
      self.server.set_succeeded(self._result)
    else:
      print("No found goal_msg command")
    
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
  
  def handle_grasp_pose(self, params):
    object_pose= self.mvt.parse_pose_to_array(params.object_pose)
    
    # get position links before Roboter grasp
    joint_names= ["arm_flex_joint", "wrist_flex_joint"]
    list_links =  ["arm_flex_link", "wrist_flex_link", "hand_palm_link"]
    list_poses = [self.mvt.get_pose("map", x) for x in list_links]
    print ("fetch values of links")
    print list_poses
    
    # determine values of Positions to grasp
    arm_flex_value = self.mvt.get_angle_values(list_poses[0], list_poses[1], object_pose)
    print arm_flex_value
    wrist_value = self.mvt.get_angle_values(list_poses[1], list_poses[2], object_pose)
    print wrist_value
    joint_values = [- arm_flex_value , -1.919 + wrist_value]
    print("New joints values were calculed") 
    
    # do move Torso
    self.do_move_joints(joint_names, joint_values) # +++++ 
    
    # do move arm_flex
    object_pose_to_odom = self.mvt.parse_pose_to_array(params.object_pose_to_odom)
    new_hand_palm_link_pose = self.mvt.get_pose("odom", "hand_palm_link")
    new_arm_flex_link_pose = self.mvt.get_pose("odom", "arm_flex_link")
    lift_value = self.mvt.get_arm_lift_up(new_arm_flex_link_pose, new_hand_palm_link_pose, object_pose_to_odom)
    s= self.mvt.move_joint("arm_lift_joint", float(lift_value))
    success_gripper = self.hg.move_gripper(1.2, 0, 0.1)
    return float(lift_value)
    
  def handle_go_to_object(self, params):
    object_pose_to_odom= self.mvt.parse_pose_to_array(params.object_pose_to_odom)
    #new_hand_palm_link_pose = self.mvt.get_pose("odom", "hand_palm_link")
    object_pose = self.mvt.parse_pose_to_array(params.object_pose)
    new_hand_palm_link_pose = self.mvt.get_pose("odom", "hand_palm_link")
    print("The new position of hand palm link to odom is :")
    print new_hand_palm_link_pose
    #distance= self.mvt.get_distance(np.array(new_hand_palm_link_pose), np.array(object_pose_to_odom))
    distance = self.mvt.get_distance(np.array(new_hand_palm_link_pose), np.array(object_pose))
    print("The distance")
    print distance
    current_x, current_y, current_rotation = self.mvt.get_current_base_position()
    translation_vec = [object_pose_to_odom[0] - new_hand_palm_link_pose[0],
                       object_pose_to_odom[1] - new_hand_palm_link_pose[1]]
    x, y = self.mvt.translate([current_x, current_y], translation_vec)
    print("target position")
    print (x, y)
    success_omnibase = self.base.move_base(x, y, current_rotation)
  
  def handle_gripper(self, params, arm_lift_value):
    width_object = float(params.width)
    print("Width")
    print width_object
    success_gripper = self.hg.move_gripper(width_object, 0, 0.1)
    s = self.mvt.move_joint("arm_lift_joint", float(arm_lift_value+0.03))
    
if __name__ == '__main__':
  rospy.init_node('do_move_joints_server')
  server = DoMoveJointsServer()
  rospy.spin()
