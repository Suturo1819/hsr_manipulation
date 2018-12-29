#!/usr/bin/env python
# -*- coding: utf-8 -*-
 
import numpy as np
import rospy
import sys
from enum import Enum
"""
  this class get all information on the joints and 
  help with the verification on their mobility.
  
"""

class Mobility:
  
  
  def __init__(self):
  
    # List of Joints and their info
    self.list_of_joints= {
      "arm_lift_joint": ["linear","z", 0.0, 0.69],
      "arm_flex_joint": ["rotation", "-y", -150.0, 0.0],
      "arm_roll_joint": ["rotation", "z", -110.0, 210.0],
      "hand_motor_joint": ["rotation", "z", 0.0, 1.3],
      "wrist_flex_joint": ["rotation", "-y", -110.0, 70.0],
      "wrist_roll_joint": ["rotation", "z", -110.0, 210.0],
      "head_pan_joint": ["rotation", "z", -220.0, 100.0],
      "head_tilt_joint": ["rotation", "-y", -90.0, 30.0]
      }
      
    print("Mobility checker is actived")
  
  def is_joint_in_body(self, joint_name):
    """
      this methode checks if joint is in the body
      :param joint_name: string
        name of joint
      :return : Boolean
        True if joint in body else False 
    """
    return joint_name in self.list_of_joints.keys()
    
    
  def get_info_about_joint(self, joint_name):
    """
      this methode get info about Joint
      :param joint_name: string
        name of joint
      :return : array
        info about Joint: [Type, Axis direction, Range or Remarks]
    """
    if joint_name in self.list_of_joints.keys():
      return self.list_of_joints[str(joint_name)]
    
    print ("Joint isn't in this body")
    return []

  def get_details_about_info(self, joint_name):
    """
      this methode print details about Joint
      :param joint_name: string
        name of joint
      print : 
        info about Joint: string
    """
    if self.is_joint_in_body(self, joint_name):
      joint = self.list_of_joints[str(joint_name)]
      return str("type: "+ joint[1] + ", lower: "+ joint[2]+", upper: "+ joint[3])
    else:
      return "Joint isnt' in body"
      
  def validate(self, joint_name, value):
    if joint_name in self.list_of_joints.keys():
      joint= self.list_of_joints[str(joint_name)]
      return  joint[2] <= value <= joint[3]
    else:
      return False
  
