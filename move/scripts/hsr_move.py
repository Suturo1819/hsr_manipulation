import rospy
import sys
from actionlib import SimpleActionClient
from giskardpy.python_interface import GiskardWrapper
from geometry_msgs.msg import PoseStamped, Point, Quaternion
import numpy as np
from tf.transformations import quaternion_about_axis
from enum import Enum
from mobility import Mobility
from hsr_gripper import HsrGripper
from utils import Utils
import tf2_ros
import tf2_geometry_msgs
import tf
import roslib
  

class HsrMove:
  
  def __init__(self):
    # initialize object
    print ("HSR_MOVE is actived")
    # Set Mobility checker
    self.check_mobility = Mobility()
    self.interface = GiskardWrapper()
    self.pose_stamped = PoseStamped()
    #self.list_body_section_name = [section.name for section in Body]
    #self.list_direction_name = [select_direction.name for select_direction in Direction] #"wrist_flex_joint": -1.57 directdevant, 0.0 enhaut
    self.states_pre_grasp = {"wrist_roll_joint": 0.0, "wrist_flex_joint": 0.0, "arm_roll_joint": 0.0, "arm_flex_joint": 0.0,
                   "arm_lift_joint": 0.0}
    self.place_states = {"wrist_roll_joint": 0.0, "wrist_flex_joint": -1.57, "arm_roll_joint": 0.0, "arm_flex_joint": 0.0,
                   "arm_lift_joint": 0.0}
    self.primary_states= {"arm_lift_joint": 0.0, "arm_flex_joint": -0.026, "arm_roll_joint": -1.57,
                          "wrist_flex_joint": -1.57, "wrist_roll_joint": 0.0}
    self.end_states = {"arm_lift_joint": 0.0, "arm_flex_joint": 0.0, "wrist_flex_joint": -1.0, "arm_roll_joint": 1.57}
    self.perceive_states = {"arm_lift_joint": 0.0, "arm_flex_joint": 0.0, "wrist_flex_joint": -1.70, "arm_roll_joint": 1.57}
  
  def init_robot(self):
    """ initialize and set robot movement of the robot """
    try:
      #self.node = rospy.init_node('move')
      #self.interface = GiskardWrapper()
      #self.pose_stamped = PoseStamped()
      print self.states
      self.move_list_joints(self.states)
      #for x,y in self.states.items():
        #self.move_joint(x, y)
      print ("Start_grasp_pose is done")
    except ValueError:
      print "Parameter are invalid"
      
  def end_grasp_pose_robot(self):
    self.end_states= {"arm_lift_joint": 0.0, "arm_flex_joint": 0.0, "wrist_flex_joint": -1.0, "arm_roll_joint": 1.57}
    self.move_list_joints(self.end_states)
    print ("End_pose is done")
    return True

  def perceive_robot(self):
    self.end_states = {"arm_lift_joint": 0.0, "arm_flex_joint": 0.0, "wrist_flex_joint": -1.70, "arm_roll_joint": 1.57}
    self.move_list_joints(self.end_states)
    print ("Perceive_pose is done")
    return True
  
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
    self.pose_stamped.header.frame_id = "map" #u'map'
    self.pose_stamped.pose.position.x = 6
    self.pose_stamped.pose.position.y = 0.0
    #self.pose_stamped.pose.position.z = 0.3
    #self.pose_stamped.pose.orientation.x = 0.0
    #self.pose_stamped.pose.orientation.y = 0.0
    self.pose_stamped.pose.orientation.w = 1
    #self.pose_stamped.pose.orientation.z = 1
    #self.interface.set_cart_goal('base_link', str(frame_id), self.pose_stamped)
    self.interface.set_cart_goal('base_footprint', "base_link", self.pose_stamped)
    self.interface.plan_and_execute()
    print ("Move link is executed")
    return True

    
  def move_link_pose(self, pose):
    """ do move of link """
    self.pose_stamped.header.frame_id = "base_link"#pose.header.frame_id #frame_id
    self.pose_stamped.pose.position.x = pose.pose.position.x
    self.pose_stamped.pose.position.y = pose.pose.position.y
    self.pose_stamped.pose.position.z = pose.pose.position.z
    self.pose_stamped.pose.orientation = pose.pose.orientation
    self.interface.set_cart_goal('base_link', pose.header.frame_id, self.pose_stamped)
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

  def move_list_joints(self, list_joints):
    """ do move of joint """
    print(list_joints)
    if len(list_joints) > 0:
      self.interface.set_joint_goal(list_joints)
      self.interface.disable_self_collision() # 3
      self.interface.plan_and_execute()
      print ("List joints is executed")
      return True
    else:
      print ("List Joints is empty")
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
  def get_angle_values(self, middle_link_pose, grip_link_pose, object_pose):
    """
    this method compute the angle between two links
    :param middle_link_pose: 3D Vector
    :param grip_link_pose: 3D Vector
    :param object_pose: 3D Vector
    :return: angle, float
    """
    #arm_flex_link_pose[1]=0
    #wrist_flex_link_pose[1]= 0
    #object_pose[1]= 0
    vect_middle_grip = self.get_vector(middle_link_pose, grip_link_pose)
    vect_middle_obj = self.get_vector(middle_link_pose, object_pose)
    return float(np.arccos(np.dot(vect_middle_grip,vect_middle_obj) / (np.linalg.norm(vect_middle_grip) * np.linalg.norm(vect_middle_obj))))
    
  def get_arm_lift_up(self, hand_palm_link, object_pose):
    """
    This method compute the height of the torso
    :param arm_flex_link:
    :param hand_palm_link:
    :param object_pose:
    :return: height, float
    """
    h = (object_pose[2] - hand_palm_link[2])
    return float(h)
    #if object_pose[2] > 0.34 and h > 0 :
    #  return float(h)
    #elif object_pose[2] <= 0.34:
    #  return 0.0 #float(arm_flex_link[2] - 0.34 - abs(h))
    #else:
    #  return None
      ##return h
    #arm_lift = 0
    #while(0.67 <= h):
      #arm_lift = arm_lift + h * 0.3
      #h = h - arm_lift
    
    
    
  def get_pose(self,source, frame_id):
    """
    the method get exactly the pose of link frame_id to source(map or odom)
    :param source: odom or map, typ string
    :param frame_id: string
    :return: [x, y, z] float array
    """
    tf_buffer = tf2_ros.Buffer()
    tf_listener = tf2_ros.TransformListener(tf_buffer)
    #print tf_listener
    ps = PoseStamped()
    
    transform = tf_buffer.lookup_transform(source,
                                         frame_id,
                                         rospy.Time(0),
                                         rospy.Duration(5.0))
    #print transform
    pose_transformed = tf2_geometry_msgs.do_transform_pose(ps, transform)
    return [pose_transformed.pose.position.x, pose_transformed.pose.position.y, pose_transformed.pose.position.z]

  def get_msg_translation_and_rotation(self, source, frame_id):
    """
    the method get exactly the pose of link frame_id to source(map or odom)
    :param source: odom or map, typ string
    :param frame_id: string
    :return: translation, rotation(quaternion)
    """
    tf_buffer = tf2_ros.Buffer()
    tf_listener = tf2_ros.TransformListener(tf_buffer)
    # print tf_listener
    ps = PoseStamped()

    transform = tf_buffer.lookup_transform(source,
                                           frame_id,
                                           rospy.Time(0),
                                           rospy.Duration(5.0))

    return [transform.transform.translation.x, transform.transform.translation.y, transform.transform.translation.z],\
           [transform.transform.rotation.x, transform.transform.rotation.y, transform.transform.rotation.z, transform.transform.rotation.w]

  def parse_pose_to_array(self, pose):
    """
      this method get the exactly value of x, y and z from a pose msg
    :param pose: geometry msg
    :return: x, y, z float
    """
    return [pose.position.x, pose.position.y, pose.position.z]
    
  def get_distance(self, vec1, vec2):
    """
    calculate the distance between two vectors
    :param vec1:
    :param vec2:
    :return: distance float
    """
    return float(np.linalg.norm(np.array(vec1) - np.array(vec2)))

  def get_current_base_position(self):
    """
    the method check the current pose of base_footprint to odom and get it
    :return: x, y, rotation
    """
    t, r = self.get_msg_translation_and_rotation("odom", "base_footprint")
    return self.base_position(t, r)

  def translate(self, position, translation_vector):
    """
    the method does a translation on a position
    :param position: current pose
    :param translation_vector: translation vector
    :return: vector[x, y], new position
    """
    return position[0]+translation_vector[0], position[1]+translation_vector[1]

  def base_position(self, translation, rotation):
    """
    the method take the translation and rotation from tf_ros and calculate the rotation in euler
    :param translation: vector
    :param rotation: quaternion (from tf_ros)
    :return: vector[x, y, rotation], current base position
    """
    euler = tf.transformations.euler_from_quaternion(rotation)
    return translation[0], translation[1], euler[2]

  def do_frame_rotatiom(self, source, frame_id, roll, pitch, yaw):
    t,r = self.get_msg_translation_and_rotation(source, frame_id)
    quaternion = tf.transformations.quaternion_from_euler(roll, pitch, yaw)
    pose_stamped= PoseStamped()
    pose_stamped.header.frame_id = frame_id  # u'map'
    pose_stamped.pose.position.x = t[0]
    pose_stamped.pose.position.y = t[1]
    pose_stamped.pose.position.z = t[2]
    pose_stamped.pose.orientation.x = quaternion[0]
    pose_stamped.pose.orientation.y = quaternion[1]
    pose_stamped.pose.orientation.z = quaternion[2]
    pose_stamped.pose.orientation.w = quaternion[3]
    return pose_stamped

