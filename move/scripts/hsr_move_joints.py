#! /usr/bin/env python

import roslib
roslib.load_manifest('move')
import rospy
import actionlib
from hsr_move import HsrMove
from hsr_arm import HsrArm
import suturo_manipulation_msgs.msg
from suturo_manipulation_msgs.msg import DoMoveJointsAction
import control_msgs
from tf2_msgs.msg import TFMessage
from utils import Utils
from hsr_gripper import HsrGripper 
from hsr_omnibase import HsrOmnibase
import numpy as np
import PyKDL as kdl
from geometry_msgs.msg import PoseStamped, Point, Quaternion
import tf

class DoMoveJointsServer:

  _feedback = suturo_manipulation_msgs.msg.DoMoveJointsFeedback()
  _result = suturo_manipulation_msgs.msg.DoMoveJointsResult()
  
  def __init__(self):
    self.server = actionlib.SimpleActionServer('do_move_joints', DoMoveJointsAction, self.execute, False)
    self.server.start()
    self.mvt = HsrMove() # ++++++
    self.ha = HsrArm()
    self.hg = HsrGripper()
    self.base = HsrOmnibase()
    #success_gripper = self.hg.close_gripper()
    #self.mvt.init_robot()
    self.utils = Utils()
    
  
  def execute(self, list_desired_joints):
    #success_gripper = self.hg.close_gripper()
    goal_msg= list_desired_joints.goal_msg
    if goal_msg == "move":
      # Do lots of awesome groundbreaking robot stuff here
      #self.mvt.init_robot()
      #self.mvt.move_list_joints(self.mvt.states)

      joint_names = list_desired_joints.desired_joints_values.joint_names
      joint_values = list_desired_joints.desired_joints_values.desired.positions
      self.do_move_joints(joint_names, joint_values) # +++++
      
      rospy.loginfo('Move is success')
      #self._result.result_msg= ' '.join(str(e) for e in joint_names) + ": " + ' '.join(str(e) for e in joint_values)
      self._result.result_msg= "Success"
      self.server.set_succeeded(self._result)
    elif goal_msg == "grip":
      # Do lots of awesome groundbreaking robot stuff here
      #object_pose = self.mvt.parse_pose_to_array(list_desired_joints.object_pose)
      #object_pose_to_odom = self.mvt.parse_pose_to_array(list_desired_joints.object_pose_to_odom)
      x_start,y_start, r_start =self.mvt.get_current_base_position()
      print ("start pose")
      print(x_start, y_start, r_start)
      # set pre grasp pose
      success_gripper = self.hg.close_gripper()
      #self.ha.pre_grasp_init()
      if list_desired_joints.modus == "FRONT" or (list_desired_joints.modus == "SIDE_RIGHT" or list_desired_joints.modus == "SIDE_LEFT"):
        offset= 0
      elif list_desired_joints.modus == "TOP" and list_desired_joints.height > 0.06:
        offset= list_desired_joints.height/2 + 0.09
      elif list_desired_joints.modus == "TOP" and list_desired_joints.height <= 0.06:
        offset = 0.135 + list_desired_joints.height / 2
      print ("Offset is:")
      print offset
      self.ha.pre_grasp_place_pose(list_desired_joints.object_pose, list_desired_joints.object_pose_to_odom, up=float(offset), modus=list_desired_joints.modus )
      
      # open gripper
      success_gripper = self.hg.open_gripper()

      # go to object
      print("Go to object")
      self.handle_go_to_object(list_desired_joints)

      # Grasp Top
      if list_desired_joints.modus =="TOP":
        self.ha.listener.listen_topic()
        self.mvt.move_list_joints({"arm_lift_joint": float(self.ha.listener.get_value("arm_lift_joint")) - 0.075})
      # grasp
      print("begin gripper")
      success_gripper = self.hg.move_gripper(list_desired_joints.width, 1, list_desired_joints.weight)
      print("End gripper")

      # check if gegriffen
      if self.hg.object_in_gripper(list_desired_joints.width):
        self._result.result_msg = ("Success")
        rospy.loginfo('Grasp is sucessfull')
      else:
        self._result.result_msg = ("Failed")
        rospy.loginfo('Grasp is failed')

      # end pre grasp
      print("The end of handle grasp pose")
      self.ha.end_pre_grasp()
      # go back
      success_omnibase = self.base.move_base(x_start, y_start, r_start)

      # end pose
      print("begin end pose")
      self.ha.end_grasp_place()
      # end, send result msg
      self.server.set_succeeded(self._result)
    elif goal_msg == "perceive":
      if self.server.is_preempt_requested():
        rospy.loginfo('the server do_move_joints is Preempted')
        self.server.set_preempted()
        success = False

      self.mvt.move_list_joints(self.mvt.perceive_states)
      success= True

      if success:
        self._result.result_msg = ("Perceive done")
        self.server.set_succeeded(self._result)
        rospy.loginfo('perceive pose is success')

    elif goal_msg == "perceive_up":
      if self.server.is_preempt_requested():
        rospy.loginfo('the server do_move_joints is Preempted')
        self.server.set_preempted()
        success = False

      self.ha.perceive_up()
      success= True

      if success:
        self._result.result_msg = ("Perceive_up done")
        self.server.set_succeeded(self._result)
        rospy.loginfo('perceive up pose is success')

    elif goal_msg == "perceive_side":
      if self.server.is_preempt_requested():
        rospy.loginfo('the server do_move_joints is Preempted')
        self.server.set_preempted()
        success = False

      self.ha.perceive_side()
      success= True

      if success:
        self._result.result_msg = ("perceive_side done")
        self.server.set_succeeded(self._result)
        rospy.loginfo('perceive side pose is success')

    elif goal_msg == "door":
      if self.server.is_preempt_requested():
        rospy.loginfo('the server do_move_joints is Preempted')
        self.server.set_preempted()
        success = False

      #object_pose = self.mvt.parse_pose_to_array(list_desired_joints.object_pose)
      #object_pose_to_odom = self.mvt.parse_pose_to_array(list_desired_joints.object_pose_to_odom)
      x_start, y_start, r_start = self.mvt.get_current_base_position()
      print ("start pose")
      print(x_start, y_start, r_start)
      # close gripper
      self.hg.move_gripper(-0.2, 0, 0.8)
      # pre pose
      self.ha.pre_grasp_place_pose(list_desired_joints.object_pose, list_desired_joints.object_pose_to_odom, up=0, modus=list_desired_joints.modus)

      # go to door
      print("Go to object")
      self.handle_go_to_object(list_desired_joints)

      # set pre open pose
      if list_desired_joints.modus == "LEFT":
        self.mvt.move_list_joints({"wrist_roll_joint": -1.1})
      elif list_desired_joints.modus == "RIGHT":
        self.mvt.move_list_joints({"wrist_roll_joint": 1.1})


      # open door
      x_current, y_current, r_current = self.mvt.get_current_base_position()
      if list_desired_joints.modus == "LEFT":
        self.mvt.move_list_joints(self.ha.open_door_from_left())
        success_omnibase = self.base.move_base(x_current, y_current, r_current - 0.7)
        success_omnibase = self.base.move_base(x_current, y_current, r_current)
      elif list_desired_joints.modus == "RIGHT":
        self.mvt.move_list_joints(self.ha.open_door_from_right())
        success_omnibase = self.base.move_base(x_current, y_current, r_current + 0.7)
        success_omnibase = self.base.move_base(x_current, y_current, r_current)
      success= True

      if success:
        self._result.result_msg = ("Open door done")
        self.server.set_succeeded(self._result)
        rospy.loginfo('Open door is success')


    elif goal_msg == "place":
      #self.mvt.move_list_joints(self.mvt.place_states)
      x_start, y_start, r_start = self.mvt.get_current_base_position()
      # Do lots of awesome groundbreaking robot stuff here
      #object_pose = self.mvt.parse_pose_to_array(list_desired_joints.object_pose)
      #object_pose_to_odom = self.mvt.parse_pose_to_array(list_desired_joints.object_pose_to_odom)

      if self.server.is_preempt_requested():
        rospy.loginfo('the server do_move_joints is Preempted')
        self.server.set_preempted()
        success = False
      # pre place pose
      if list_desired_joints.modus == "FRONT" or (list_desired_joints.modus == "SIDE_RIGHT" or list_desired_joints.modus == "SIDE_LEFT"):
        offset= float(list_desired_joints.height /2 + 0.02)
      elif list_desired_joints.modus == "TOP":
        offset= list_desired_joints.height + 0.02
      self.ha.pre_grasp_place_pose(list_desired_joints.object_pose,
                                   list_desired_joints.object_pose_to_odom,
                                   up=offset,
                                   modus=list_desired_joints.modus) # for top
                                          # up=float(list_desired_joints.height / 2 + 0.03)
      # go to object
      self.handle_go_to_object(list_desired_joints)
      # let object
      self.hg.open_gripper()
      # go back
      success_omnibase = self.base.move_base(x_start, y_start, r_start)
      success = True
      print("begin end pose")
      self.ha.end_grasp_place()

      if success:
        self._result.result_msg = ("Place done")
        self.server.set_succeeded(self._result)
        rospy.loginfo('Place Object is success')
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

  def do_move_list_joints(self, joints_values):
    count_success = 0
    if self.server.is_preempt_requested():
      rospy.loginfo('the server do_move_joints is Preempted')
      self.server.set_preempted()
      success = False

    success = self.mvt.move_list_joints(joints_values)

    if success:
      count_success = len(joints_values)
      self._feedback.feedback_msg = float(len(joints_values))
      self._feedback.successful_joints_values.joint_names= joints_values.keys()
      self._feedback.successful_joints_values.actual.positions= joints_values.values()
      rospy.loginfo("List of joints is moved")
      rospy.loginfo(joints_values)
      self.server.publish_feedback(self._feedback)

    if count_success > 0 and success:
      print ("End move joint")
      self._result.result_msg = ("all joints are moved")
      self._result.current_joints_values.joint_names = joints_values.keys()
      self._result.current_joints_values.actual.positions = joints_values.values()
      rospy.loginfo('all joints are moved with success')


    else:
      print ("Joint list is empty")
      success = False


  def handle_go_to_object(self, params):
    """
    this method calculates the distance between the position of basis and the position of object to grasp,
    In next time, the robot will be driven to the object to catch or deposit.
    :param params: DoMoveAction.msg
    :return:
    """
    object_pose_to_odom= self.mvt.parse_pose_to_array(params.object_pose_to_odom)
    #new_hand_palm_link_pose = self.mvt.get_pose("odom", "hand_palm_link")
    object_pose = self.mvt.parse_pose_to_array(params.object_pose)
    new_hand_palm_link_pose = self.mvt.get_pose("odom", "hand_palm_link")
    print("The new position of hand palm link to odom is :")
    print new_hand_palm_link_pose
    #distance= self.mvt.get_distance(np.array(new_hand_palm_link_pose), np.array(object_pose_to_odom))
    #distance = self.mvt.get_distance(np.array(new_hand_palm_link_pose), np.array(object_pose))
    print("The distance")
    #print distance
    current_x, current_y, current_rotation = self.mvt.get_current_base_position()
    translation_vec = [object_pose_to_odom[0] - new_hand_palm_link_pose[0],
                       object_pose_to_odom[1] - new_hand_palm_link_pose[1]]
    x, y = self.mvt.translate([current_x, current_y], translation_vec)
    print("target position")
    print (x, y)
    # graps from right
    if params.modus=="SIDE_RIGHT":
      success_omnibase = self.base.move_base(x, y, current_rotation - 0.235)
    # graps from left
    if params.modus=="SIDE_LEFT":
      success_omnibase = self.base.move_base(x, y, current_rotation + 0.235)

    success_omnibase = self.base.move_base(x, y, current_rotation)

    
if __name__ == '__main__':
  rospy.init_node('do_move_joints_server')
  server = DoMoveJointsServer()
  rospy.spin()
