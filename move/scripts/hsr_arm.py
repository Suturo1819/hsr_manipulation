#!/usr/bin/env python

import numpy as np
import sys
import tf2_ros
import tf2_geometry_msgs
from geometry_msgs.msg import PoseStamped
import rospy
from mobility import Mobility
from hsr_move import HsrMove
from listener import Listener as l
from utils import Utils
from control_msgs.msg import JointTrajectoryControllerState
import tf

class HsrArm:
  """
  This class determinate and give all move joints of hsrs arm
  """

  def __init__(self):
    print("HsrArm is actived.")
    self.check_mobility = Mobility()
    self.mvt = HsrMove()
    self.listener= l()
    self.utils = Utils()
    self.listener.set_topic_and_typMEssage("/hsrb/arm_trajectory_controller/state", JointTrajectoryControllerState)
    #self.listener.set_topic_and_typMEssage("/whole_body_controller/state", JointTrajectoryControllerState)

  def bottom_grasp_joints(self, arm_flex_joint_value):
    """
    determinate joints values for arm_flex and wrist_flex
    :param arm_flex_joint_value: value of arm_flex_joint
    :type float
    :return: arm_flex_joint, wrist_flex_joint
    :type dict { arm_flex_joint: float, wrist_flex_joint: float}
    """
    return {"arm_flex_joint": -arm_flex_joint_value,
            "wrist_flex_joint": round(abs(3.14 - arm_flex_joint_value + 1.57 - 3.14), 2)}

  def top_grasp_joints(self, arm_flex_joint_value):
    """
    OPTIMAL AND BETTER
    determinate joints values for arm_flex and wrist_flex
    :param arm_flex_joint_value: value of arm_flex_joint
    :type float
    :return: arm_flex_joint, wrist_flex_joint
    :type dict { arm_flex_joint: float, wrist_flex_joint: float}
    """
    return {"arm_flex_joint": -arm_flex_joint_value,
            "wrist_flex_joint": round(-(3.14 - arm_flex_joint_value - 1.57), 2)}

  def arm_lift_value(self, hand_palm_pose_to_odom, object_pose_to_odom):
    """
    This method gives the arm_lift_joint value
    :param hand_palm_pose_to_odom: hand_palm_link to odom
    :type Vector
    :param object_pose_to_odom: object_pose to odom
    :type Vector
    :return: float
    """
    h= object_pose_to_odom[2] - hand_palm_pose_to_odom[2]
    return self.check_mobility.get_validated_value("arm_lift_joint", h)

  def arm_flex_value(self, object_pose):
    """
    this method determinate the arm_flex_joints value
    :param object_pose_to_odom: object pose to odom
    :type geometry_msgs.msg PoseStamped
    :return: arm_flex_joint
    :type float
    """
    list_links = ["arm_flex_link", "wrist_flex_link"]
    list_poses = [self.mvt.get_pose("map", x) for x in list_links]
    print ("fetch values of links")
    print list_poses

    # determine values of Positions to grasp
    return self.mvt.get_angle_values(list_poses[0], list_poses[1], object_pose)

  def pre_pose_middle(self, object_pose):
    """
    This method determines values of joints for middle pose
    :param object_pose: object_pose
    :return: dict of joints and values
    """
    arm_flex = self.arm_flex_value(object_pose)
    joints = self.top_grasp_joints(arm_flex) # rename top_joint
    return joints

  def pre_pose_top(self):
    """
    This method determines values of joints for top pose
    :param object_pose: object_pose
    :return: dict of joints and values
    """
    joints = self.top_grasp_joints(0.2) # rename top_joint
    return joints

  def pre_pose_bottom(self, arm_flex):
    """
    This method determines values of joints for bottom pose
    :param object_pose: object_pose
    :return: dict of joints and values
    """
    joints = self.top_grasp_joints(arm_flex) # renam top_joint
    return joints

  def pre_grasp_place_pose(self, object_pose1, object_pose_to_odom1, up=0.0, modus="FRONT"):
    """
    This set the pre grasp pose of robot
    :param object_pose: object_pose
    :type Vector
    :param object_pose_to_odom: object_pose to odom
    :type Vector
    :param up: up add more value to arm_lift
    :type float
    :param beside: decide if the grasp is from beside
    :type bool
    :param modus: decide typ of grasp
    :type bool
    :return: do move of pre grasp pose
    """
    object_pose = self.mvt.parse_pose_to_array(object_pose1)
    object_pose_to_odom = self.mvt.parse_pose_to_array(object_pose_to_odom1)
    if object_pose[2] <= 1 and object_pose[2] > 0.32:
      joints = self.pre_pose_bottom(1.3) # 27.04.19
      joints["wrist_roll_joint"]= 0.0
      joints["arm_roll_joint"] = 0.0
      # check if grasp is from top, then add
      if modus=="TOP":
        self.list_joints = self.utils.fusion_dict(self.grasp_by_up(), joints)
        self.list_joints["wrist_roll_joint"]= self.wrist_roll_value_for_top_pose(object_pose1)

      elif modus=="SIDE_RIGHT":
        self.list_joints = self.utils.fusion_dict(self.grasp_by_side_right(joints["arm_flex_joint"]), joints)
      elif modus=="SIDE_LEFT":
        self.list_joints = self.utils.fusion_dict(self.grasp_by_side_left(joints["arm_flex_joint"]), joints)
      else:
        self.list_joints = joints
      if modus == "TOP":
        self.list_joints["arm_lift_joint"] = self.check_mobility.get_validated_value("arm_lift_joint",
                                                                                     float(up + object_pose_to_odom[
                                                                                       2] - 0.278))
      else:
        self.list_joints["arm_lift_joint"] = self.check_mobility.get_validated_value("arm_lift_joint",
                                                                              float(up + object_pose_to_odom[
                                                                                2] - 0.395581))
      self.mvt.move_list_joints(self.list_joints) # 27.04.19

    elif object_pose[2] <= 0.32:

      # check if grasp is from top, then add
      if modus=="TOP":
        joints = self.pre_pose_bottom(1.8)
        joints = self.utils.fusion_dict(self.grasp_by_up(), joints)
        validated_joint={}

        for key in joints.keys():
          validated_joint[key] = self.check_mobility.get_validated_value(key, joints[key])

        # top pose wrist roll
        validated_joint["wrist_roll_joint"]= self.wrist_roll_value_for_top_pose(object_pose1)
        validated_joint["arm_lift_joint"] = self.check_mobility.get_validated_value("arm_lift_joint",
                                                                                    float(up + object_pose_to_odom[
                                                                                      2] - 0.11625))
        self.mvt.move_list_joints(validated_joint)
      else:
        joints = self.pre_pose_bottom(2.4)
        validated_joint = {}
        validated_joint["arm_lift_joint"] = self.check_mobility.get_validated_value("arm_lift_joint",
                                                                                    up + object_pose_to_odom[
                                                                                      2] - 0.07034)
        for key in joints.keys():
          validated_joint[key] = self.check_mobility.get_validated_value(key, joints[key])
        self.mvt.move_list_joints(validated_joint)

        if modus == "SIDE_RIGHT":
          self.mvt.move_list_joints(self.grasp_by_side_right(validated_joint["arm_flex_joint"]))
        elif modus == "SIDE_LEFT":
          self.mvt.move_list_joints(self.grasp_by_side_left(validated_joint["arm_flex_joint"]))



    else:
      if modus =="TOP":
        up= 0.0
      joints = self.pre_pose_top()
      self.mvt.move_list_joints(joints)
      hand_palm_pose_to_odom = self.mvt.get_pose("map", "hand_palm_link")
      self.mvt.move_list_joints({"arm_lift_joint":
                                   up+self.arm_lift_value(hand_palm_pose_to_odom,
                                                       object_pose_to_odom)})
      if modus=="SIDE_RIGHT":
        self.mvt.move_list_joints(self.grasp_by_side_right(joints["arm_flex_joint"]))
      elif modus=="SIDE_LEFT":
        self.mvt.move_list_joints(self.grasp_by_side_left(joints["arm_flex_joint"]))

  def end_pre_grasp(self):
    """
    this method listens and performs special movements of the torso
    :return:
    """
    self.listener.listen_topic()
    arm_lift = self.listener.get_value("arm_lift_joint")
    self.mvt.move_list_joints({"arm_lift_joint": arm_lift + 0.03})

  def end_grasp_place(self):
    """
    This method execute the end of grasp pose
    :return:
    """
    self.mvt.end_grasp_pose_robot()

  def pre_grasp_init(self):
    """
    This method execute the pre grasp pose
    :return:
    """
    self.mvt.move_list_joints(self.mvt.states_pre_grasp)

  def perceive_up(self):
    """
    This method execute the perceive up pose, this help for better objects perception
    :return:
    """
    goal_js = {
      "arm_lift_joint": 0.1,
      "arm_flex_joint": -2.6,
      "wrist_flex_joint": -1.70,
      "arm_roll_joint": 1.57
    }
    self.mvt.move_list_joints(goal_js)

  def perceive_side(self):
    """
    This method  execute the perceive side pose.
    :return:
    """
    goal_js= {
      "wrist_roll_joint": 0.0,
      "wrist_flex_joint": -1.57,
      "arm_roll_joint": 0.0,
      "arm_flex_joint": -0.3,
      "arm_lift_joint": 0.0
    }
    self.mvt.move_list_joints(goal_js)

  def grasp_by_side_right(self, arm_flex_value):
    """
    calculates the rotation needed to catch from the right
    :param arm_flex_value: float
    :return: list of joints
    """
    goal_js = {
      "wrist_flex_joint": -1.57,
      "wrist_roll_joint": arm_flex_value,
      "arm_roll_joint": 1.57
    }
    return goal_js

  def grasp_by_side_left(self, arm_flex_value):
    """
    calculates the rotation needed to catch from the left
    :param arm_flex_value: float
    :return: list of joints
    """
    goal_js = {
      "wrist_flex_joint": -1.57,
      "wrist_roll_joint": abs(arm_flex_value),
      "arm_roll_joint": -1.57
    }
    return goal_js

  def grasp_by_side(self, orientation):
    p = PoseStamped()
    hand_palm_pose = self.mvt.get_pose("map", "hand_palm_link")
    p.header.frame_id = 'hand_palm_link'
    p.pose.position.x = hand_palm_pose[0]
    p.pose.position.y = hand_palm_pose[1]
    p.pose.position.z = hand_palm_pose[2]
    p.pose.orientation.x = orientation.x
    p.pose.orientation.y = orientation.y
    p.pose.orientation.z = orientation.z
    p.pose.orientation.w = orientation.w
    self.mvt.move_link_pose(p)

  def grasp_by_up(self):
    goal_js = {
      "wrist_flex_joint": -1.57, #1.57
      "arm_roll_joint": 0.0
    }
    return goal_js

  def open_door_from_left(self):
    """
    the method calculate the pose to open the left door
    :return:
    """
    goal_js = {
      "wrist_flex_joint": -1.57,
      "wrist_roll_joint": 1.57,
      "arm_roll_joint": -1.57
    }
    return goal_js

  def open_door_from_right(self):
    """
    this method calculate the pose to open the right door
    """
    goal_js = {
      "wrist_flex_joint": -1.57,
      "wrist_roll_joint": -1.57,
      "arm_roll_joint": 1.57
    }
    return goal_js

  def wrist_roll_value_for_top_pose(self, object_pose):
    euler_rot = tf.transformations.euler_from_quaternion([
      object_pose.orientation.x,
      object_pose.orientation.y,
      object_pose.orientation.z,
      object_pose.orientation.w])
    print("Orientation object is:")
    print object_pose.orientation
    print euler_rot[2]
    return euler_rot[2] + 1.57 #1.570796326795
