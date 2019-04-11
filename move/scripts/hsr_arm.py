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
    # self.listener.set_topic_and_typMEssage("/whole_body_controller/state", JointTrajectoryControllerState)

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

  def pre_grasp_place_pose(self, object_pose, object_pose_to_odom, up=0.0, modus="FRONT"):
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

    if object_pose[2] <= 1 and object_pose[2] > 0.32:
      joints = self.pre_pose_middle(object_pose)
      self.mvt.move_list_joints(joints)
      # check if grasp is from top, then add
      if modus=="TOP":
        self.mvt.move_list_joints(self.utils.fusion_dict(self.grasp_by_up(), joints))

      hand_palm_pose_to_odom= self.mvt.get_pose("map", "hand_palm_link")
      self.mvt.move_list_joints({"arm_lift_joint":
                                   up+self.arm_lift_value(hand_palm_pose_to_odom,
                                                       object_pose_to_odom)})
    elif object_pose[2] <= 0.32:

      # check if grasp is from top, then add
      if modus=="TOP":
        joints = self.pre_pose_bottom(1.8)
        joints = self.utils.fusion_dict(self.grasp_by_up(), joints)
        validated_joint={}
        validated_joint["arm_lift_joint"] = self.check_mobility.get_validated_value("arm_lift_joint",
                                                                                    float(up + object_pose_to_odom[
                                                                                      2] - 0.11625))
                                                                                    #float(up + object_pose_to_odom[2]-0.225))
        for key in joints.keys():
          validated_joint[key] = self.check_mobility.get_validated_value(key, joints[key])

        self.mvt.move_list_joints(validated_joint)

        #hand_palm_pose_to_odom = self.mvt.get_pose("map", "hand_palm_link")
        #self.mvt.move_list_joints({"arm_lift_joint":
                                     #up + self.arm_lift_value(hand_palm_pose_to_odom,
                                                              #object_pose_to_odom)})
      else:
        joints = self.pre_pose_bottom(2.4)
        validated_joint = {}
        validated_joint["arm_lift_joint"] = self.check_mobility.get_validated_value("arm_lift_joint",
                                                                                    up + object_pose_to_odom[
                                                                                      2] - 0.07034)
        for key in joints.keys():
          validated_joint[key] = self.check_mobility.get_validated_value(key, joints[key])
        self.mvt.move_list_joints(validated_joint)



    else:
      if modus =="TOP":
        up= 0.0
      joints = self.pre_pose_top()
      self.mvt.move_list_joints(joints)
      hand_palm_pose_to_odom = self.mvt.get_pose("map", "hand_palm_link")
      self.mvt.move_list_joints({"arm_lift_joint":
                                   up+self.arm_lift_value(hand_palm_pose_to_odom,
                                                       object_pose_to_odom)})

  def end_pre_grasp(self):
    self.listener.listen_topic()
    arm_lift = self.listener.get_value("arm_lift_joint")
    self.mvt.move_list_joints({"arm_lift_joint": arm_lift + 0.03})

  def end_grasp_place(self):
    self.mvt.end_grasp_pose_robot()

  def pre_grasp_init(self):
    self.mvt.move_list_joints(self.mvt.states_pre_grasp)

  def perceive_up(self):
    goal_js = {
      "arm_lift_joint": 0.1,
      "arm_flex_joint": -2.6,
      "wrist_flex_joint": -1.70,
      "arm_roll_joint": 1.57
    }
    self.mvt.move_list_joints(goal_js)

  def grasp_by_side_right(self, wrist_roll_value):
    goal_js = {
      "wrist_flex_joint": 1.57,
      "wrist_roll_joint": wrist_roll_value,
      "arm_roll_joint": 1.57
    }
    #self.mvt.move_list_joints(goal_js)
    return goal_js

  def grasp_by_side_left(self, wrist_roll_value):
    goal_js = {
      "wrist_flex_joint": -1.57,
      "wrist_roll_joint": wrist_roll_value,
      "arm_roll_joint": -1.57
    }
    return goal_js

  def grasp_by_up(self):
    goal_js = {
      "wrist_flex_joint": -1.57  #1.57
      #"wrist_roll_joint": -1.57
    }
    return goal_js
    #self.mvt.move_link_pose(self.mvt.do_frame_rotatiom("odom", "hand_palm_link", 0, -1.57, 0))


