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
    self.list_body_section_name = [section.name for section in Body]
    self.list_direction_name = [select_direction.name for select_direction in Direction]
    self.states = {"arm_lift_joint": 0.0, "arm_flex_joint": 0.0, "arm_roll_joint": 0.0, "wrist_flex_joint": -1.57, "wrist_roll_joint": 0.0}
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
      self.move_joint(param_frame_id, param_value)
      print ("Move is done")
    else:
      print ("command isn't sended")
      print move_parameter[0]
 
  
  def move_link(self, frame_id, x, y, z, w):
    """ do move of link """
    print ("Frame_id "+ frame_id+", x: "+ x + ", y: "+ y +", z: "+ z + ", w: "+ w)
    self.pose_stamped.header.frame_id = frame_id
    self.pose_stamped.pose.position.x = self.get_coordinate(x)
    self.pose_stamped.pose.position.y = self.get_coordinate(y)
    self.pose_stamped.pose.position.z = self.get_coordinate(z)
    self.pose_stamped.pose.orientation.w = self.get_coordinate(w)
    self.interface.set_cart_goal('base_link', str(frame_id), self.pose_stamped)
    self.interface.plan_and_execute()
    print ("Move link is executed")
  
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
    else:
      print ("Move joint isn't executed")

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
      if x != coef1:
        return False
        
    return True
    
  def get_arm_flex_and_arm_lift_values(self, arm_flex_position, hand_palm_link_position, object_position):
    arm_lift = 0.0 #value arm_lift
    dist_arm_flex_object = float(self.get_distance(arm_flex_position, object_position)) # get distance between arm_flex - object
    dist_arm_flex_hand = float(self.get_distance(arm_flex_position, hand_palm_link_position)) # get distance with arm_flex - hand_palm_link
    while(arm_lift <= 0.69 and 0.05 <= (dist_arm_flex_object - dist_arm_flex_hand)):
      # ajouter 0.01 au Z de flex ou lift, ensuite exprimer l'ouverture...et verifier si les vecteurs sont parallele
      #height = hauteur entre flex et objet sur axe z
      #angle = arccos(hauteur/ float(self.get_distance(hand_palm_link_position, arm_flex_position))
      #verifier si la nouvellle hauteur et abstand
      arm_lift= arm_lift + 0.01
      pass
