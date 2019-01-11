import rospy
import sys
from actionlib import SimpleActionClient
from giskardpy.python_interface import GiskardWrapper
from geometry_msgs.msg import PoseStamped, Point, Quaternion
import numpy as np
from tf.transformations import quaternion_about_axis
from enum import Enum
from mobility import Mobility
  

class HsrMove:
  
  def __init__(self):
    # initialize object
    print ("HSR_MOVE is actived")
    # Set Mobility checker
    self.check_mobility = Mobility()
    self.interface = GiskardWrapper()
    self.pose_stamped = PoseStamped()
    #self.list_body_section_name = [section.name for section in Body]
    #self.list_direction_name = [select_direction.name for select_direction in Direction] #"wrist_flex_joint": -1.57
    self.states = {"arm_lift_joint": 0.0, "arm_flex_joint": 0.0, "arm_roll_joint": 0.0, "wrist_flex_joint": 0.0, "wrist_roll_joint": 0.0}
    self.primary_states= {"arm_lift_joint": 0.0, "arm_flex_joint": -0.026, "arm_roll_joint": -1.57, "wrist_flex_joint": -1.57, "wrist_roll_joint": 0.0}
  
  def init_robot(self):
    """ initialize and set robot movement of the robot """
    try:
      #self.node = rospy.init_node('move')
      #self.interface = GiskardWrapper()
      #self.pose_stamped = PoseStamped()
      print self.states
      for x,y in self.states.items():
        self.move_joint(x, y)
      print ("Start_end_pose is done")
    except ValueError:
      print "Parameter are invalid"
  
  def do_move(self, move_parameter):
    """ execute move of one joint or link """
    if move_parameter[0] == "link":
      param_frame_id = move_parameter[1]
      param_x = move_parameter[2]
      param_y = move_parameter[3]
      param_z = move_parameter[4]
      param_w = move_parameter[5]
      self.move_link(param_frame_id, param_x, param_y, param_z, param_w)
      print ("Move is done")
    elif move_parameter[0] == "joint":
      param_frame_id= move_parameter[1]
      param_value= move_parameter[2]
      feedback_joint = self.move_joint(param_frame_id, param_value)
      print ("Move is done")
    else:
      print ("command isn't sended")
      print move_parameter[0]
 
  def move_link(self, frame_id, x, y, z, w):
    """ do move of link """
    print ("Frame_id "+ str(frame_id)+", x: "+ str(x) + ", y: "+ str(y) +", z: "+ str(z) + ", w: "+ str(w))
    self.pose_stamped.header.frame_id = frame_id
    self.pose_stamped.pose.position.x = x
    self.pose_stamped.pose.position.y = y
    self.pose_stamped.pose.position.z = z
    self.pose_stamped.pose.orientation.w = w
    self.interface.set_cart_goal('base_link', str(frame_id), self.pose_stamped)
    if self.interface.plan_and_execute():
      print ("Move link is executed")
      return True
      
    return False
    
  def old_move_link(self, frame_id, x, y, z, w):
    """ do move of link """
    print ("Frame_id "+ frame_id+", x: "+ x + ", y: "+ y +", z: "+ z + ", w: "+ w)
    self.pose_stamped.header.frame_id = frame_id
    self.pose_stamped.pose.position.x = self.get_coordinate(x)
    self.pose_stamped.pose.position.y = self.get_coordinate(y)
    self.pose_stamped.pose.position.z = self.get_coordinate(z)
    self.pose_stamped.pose.orientation.w = self.get_coordinate(w)
    self.interface.set_cart_goal('base_link', str(frame_id), self.pose_stamped)
    if self.interface.plan_and_execute():
      print ("Move link is executed")
      return True
      
    return False
  
  def get_coordinate(self, point):
    """convert string value to float """
    if point != "none":
      return float(point)
    else:
      return None
      
  def move_joint(self, frame_id, value):
    """ do move of joint """
    print(str(frame_id), float(value))
    if self.check_mobility.validate(str(frame_id), float(value)):
      self.interface.set_joint_goal({str(frame_id): self.get_coordinate(value)}) # nur Gelenkwinkel #3
      self.interface.disable_self_collision() # 3
      self.interface.plan_and_execute()
      print ("Move is executed")
      return True
    else:
      print ("Move joint isn't executed")
      return False
  
  def do_move_joints(self, joint_names, joint_values):
    if(len(joint_names) == len(joint_names)) and len(joint_names) > 0:
      for x in range(len(joint_names)):
        self.move_joint(joint_names[x], joint_values[x])
      print ("End move joint")
    else:
      print ("Joint list is empty")
    
  
  def get_distance(self, vec1, vec2):
    return float(np.linalg.norm(np.array(vec1) - np.array(vec2)))
  
  def get_vector(self,point1,point2):
    """ calcul and return a vector from two points """
    return np.array(point2, float)-np.array(point1, float)
    
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
    
  def get_arm_flex_and_arm_lift_values(self, wrist_flex_link_position, object_position):
    arm_lift = (object_position - 0.34) #value arm_lift
    # check if the height is sufficient
    if (arm_lift <= 0.61 and arm_lift >= 0 ):
      arm_lift = arm_lift * 0.5
      arm_flex_value= 0 # value arm_flex
      col = False # wrist and object are collinear
      while(arm_flex_value >= -2.617 and not col):
        new_wrist_flex_link_position = self.rotate_pitch(wrist_flex_link_position, arm_flex_value)
        col = self.is_collinear(new_wrist_flex_link_position, object_position)
        arm_flex_value = arm_flex_value - 0.01
      
      if col:
        print("arm_lift and flex are found")
        return float(arm_lift), float(arm_flex_value)
      else:
        print("arm_lift and flex are not found")
        return 0.0, 0.0
    elif (arm_lift < 0):
      arm_lift = abs(arm_lift)
      wrist_flex_link_position = self.rotate_pitch(wrist_flex_link_position, arm_flex_value)
      pass
      return 0.0, 0.0
    # arm_lift > 0.67
    else:
      return 0.0, 0.0
      
      
  def rotate_roll(self, pose, angle):
    homogenous_matrix= np.array([[1, 0, 0], 
      [0, cos(angle), -sin(angle)],
      [0, sin(angle), cos(angle)]])
    return np.dot(homogenous_matrix, pose)
    
  def rotate_pitch(self, pose, angle):
    homogenous_matrix= np.array([[cos(angle), 0, sin(angle)], 
      [0, 1, 0],
      [-sin(angle), 0, cos(angle)]])
    return np.dot(homogenous_matrix, pose)

  def rotate_yaw(self, pose, angle, translation):
    homogenous_matrix= np.array([[cos(angle), 0, sin(angle)], 
      [0, 1, 0],
      [-sin(angle), 0, cos(angle)]])
    return np.dot(homogenous_matrix, pose)
