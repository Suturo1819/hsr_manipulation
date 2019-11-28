import rospy
import sys
import numpy as np
from geometry_msgs.msg import PoseStamped, Point, Quaternion
from tf.transformations import quaternion_about_axis
from PyKDL import *
import tf

class Utils:

  def rotate_roll(self, pose, angle):
    homogenous_matrix= np.array([[1, 0, 0], 
      [0, cos(angle), -sin(angle)],
      [0, sin(angle), cos(angle)]])
    return np.dot(homogenous_matrix, pose)
    
  def rotate_pitch(self, pose, angle):
    homogenous_matrix= np.array([[np.cos(angle), 0, np.sin(angle)], 
      [0, 1, 0],
      [-np.sin(angle), 0, np.cos(angle)]])
    return np.dot(homogenous_matrix, pose)

  def rotate_yaw(self, pose, angle):
    homogenous_matrix= np.array([[cos(angle), 0, sin(angle)], 
      [0, 1, 0],
      [-sin(angle), 0, cos(angle)]])
    return np.dot(homogenous_matrix, pose)
    
  def is_collinear(self, vector1, vector2):
    """ check if two vetctors are collinear,
        param1: array
        param2: array
        return: true if vectors are collinear
    """
    coefficient= vector2 / vector1
    coef1= coefficient[0]
    for x in coefficient[1:3]:
      if round(x,2) != round(coef1,2):
        return False
        
    return True
    
  def get_distance(self, vec1, vec2):
    return float(np.linalg.norm(np.array(vec1) - np.array(vec2)))

  def get_vector(self, point1, point2):
    """ calcul and return a vector from two points """
    return np.array(point2, float) - np.array(point1, float)

  def get_angle_values(self, middle_link_pose, grip_link_pose, object_pose):
    """
    this method compute the angle between two links
    :param middle_link_pose: 3D Vector
    :param grip_link_pose: 3D Vector
    :param object_pose: 3D Vector
    :return: angle, float
    """
    vect_middle_grip = self.get_vector(middle_link_pose, grip_link_pose)
    vect_middle_obj = self.get_vector(middle_link_pose, object_pose)
    return float(np.arccos(
      np.dot(vect_middle_grip, vect_middle_obj) / (np.linalg.norm(vect_middle_grip) * np.linalg.norm(vect_middle_obj))))

  def fusion_dict(self, list1, list2):
    """
    this method fusion to lists.
    all keys and values from list2 to list1
    :param list1:
    :param list2:
    :return: fusion_list
    :type dict
    """
    print ("Fusion list no adapted")
    print list1
    fusion_list={}
    for key in list2.keys():
      if key in list1:
        fusion_list[key] = list1[key] + list2[key]
      else:
        fusion_list[key] = list2[key]
    for key in list1.keys():
      if key not in fusion_list:
        fusion_list[key] = list1[key]

    print ("Fusion list adapted")
    print list1
    return fusion_list

