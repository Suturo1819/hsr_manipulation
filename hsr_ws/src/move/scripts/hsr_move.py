import rospy
import sys
from actionlib import SimpleActionClient
from giskardpy.python_interface import GiskardWrapper
from geometry_msgs.msg import PoseStamped, Point, Quaternion
import numpy as np
from tf.transformations import quaternion_about_axis
from enum import Enum
from mobility import Mobility
from utils import Utils
import tf2_ros
import tf2_geometry_msgs
  

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
    self.states = {"wrist_roll_joint": 0.0, "wrist_flex_joint": 0.0, "arm_roll_joint": 0.0, "arm_flex_joint": 0.0, "arm_lift_joint": 0.0}
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
      
  def end_pose_robot(self):
    self.end_states= {"arm_lift_joint": 0.0, "arm_flex_joint": 0.0, "wrist_flex_joint": -1.57}
    for x,y in self.end_states.items():
      self.move_joint(x, y)
    print ("End_pose is done")
  
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
    self.pose_stamped.header.frame_id = u'map' #frame_id
    self.pose_stamped.pose.position.x = x
    self.pose_stamped.pose.position.y = y
    self.pose_stamped.pose.position.z = z
    self.pose_stamped.pose.orientation.w = 1
    self.interface.set_cart_goal('base_link', str(frame_id), self.pose_stamped)
    self.interface.plan_and_execute()
    print ("Move link is executed")
    return True

    
  def old_move_link(self, frame_id, x, y, z, w):
    """ do move of link """
    print ("Frame_id "+ frame_id+", x: "+ x + ", y: "+ y +", z: "+ z + ", w: "+ w)
    self.pose_stamped.header.frame_id = u'map' #frame_id
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
    
  
  def get_vector(self,point1,point2):
    """ calcul and return a vector from two points """
    return np.array(point2, float)-np.array(point1, float)
    
  # same for angle by wrist_flex:  wrist_flex_link_pose, hand_palm_link_pose, object_pose
  def get_flex_values(self, middle_link_pose, grip_link_pose, object_pose):
    #arm_flex_link_pose[1]=0
    #wrist_flex_link_pose[1]= 0
    #object_pose[1]= 0
    vect_middle_grip = self.get_vector(middle_link_pose, grip_link_pose)
    vect_middle_obj = self.get_vector(middle_link_pose, object_pose)
    return float(np.arccos(np.dot(vect_middle_grip,vect_middle_obj) / (np.linalg.norm(vect_middle_grip) * np.linalg.norm(vect_middle_obj))))
    
  def get_arm_lift_up(self, arm_flex_link, hand_palm_link, object_pose):
    h = (object_pose[2] - 0.34) - (hand_palm_link[2] - 0.34)
    if h > 0 :
      return float(h)
    elif h < 0:
      return float(arm_flex_link.z - 0.34 - abs(h))
    else:
      return h
    #arm_lift = 0
    #while(0.67 <= h):
      #arm_lift = arm_lift + h * 0.3
      #h = h - arm_lift
    
    
    
  def get_pose(self, frame_id):
    tf_buffer = tf2_ros.Buffer()
    tf_listener = tf2_ros.TransformListener(tf_buffer)
    #print tf_listener
    ps = PoseStamped()
    
    transform = tf_buffer.lookup_transform("map",
                                         frame_id,
                                         rospy.Time(0),
                                         rospy.Duration(1.0)) 
    #print transform
    pose_transformed = tf2_geometry_msgs.do_transform_pose(ps, transform)
    return [pose_transformed.pose.position.x, pose_transformed.pose.position.y, pose_transformed.pose.position.z]
            
