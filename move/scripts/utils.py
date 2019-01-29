import rospy
import sys
import numpy as np

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
