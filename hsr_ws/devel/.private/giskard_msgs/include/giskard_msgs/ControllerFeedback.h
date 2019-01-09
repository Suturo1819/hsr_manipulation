// Generated by gencpp from file giskard_msgs/ControllerFeedback.msg
// DO NOT EDIT!


#ifndef GISKARD_MSGS_MESSAGE_CONTROLLERFEEDBACK_H
#define GISKARD_MSGS_MESSAGE_CONTROLLERFEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <sensor_msgs/JointState.h>
#include <giskard_msgs/SemanticFloat64.h>
#include <giskard_msgs/SemanticFloat64.h>
#include <giskard_msgs/SemanticFloat64.h>
#include <giskard_msgs/SemanticVector3.h>
#include <giskard_msgs/WholeBodyCommand.h>

namespace giskard_msgs
{
template <class ContainerAllocator>
struct ControllerFeedback_
{
  typedef ControllerFeedback_<ContainerAllocator> Type;

  ControllerFeedback_()
    : header()
    , watchdog_active(false)
    , commands()
    , slacks()
    , convergence_features()
    , doubles()
    , vectors()
    , current_command()
    , current_command_hash(0)  {
    }
  ControllerFeedback_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , watchdog_active(false)
    , commands(_alloc)
    , slacks(_alloc)
    , convergence_features(_alloc)
    , doubles(_alloc)
    , vectors(_alloc)
    , current_command(_alloc)
    , current_command_hash(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint8_t _watchdog_active_type;
  _watchdog_active_type watchdog_active;

   typedef  ::sensor_msgs::JointState_<ContainerAllocator>  _commands_type;
  _commands_type commands;

   typedef std::vector< ::giskard_msgs::SemanticFloat64_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::giskard_msgs::SemanticFloat64_<ContainerAllocator> >::other >  _slacks_type;
  _slacks_type slacks;

   typedef std::vector< ::giskard_msgs::SemanticFloat64_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::giskard_msgs::SemanticFloat64_<ContainerAllocator> >::other >  _convergence_features_type;
  _convergence_features_type convergence_features;

   typedef std::vector< ::giskard_msgs::SemanticFloat64_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::giskard_msgs::SemanticFloat64_<ContainerAllocator> >::other >  _doubles_type;
  _doubles_type doubles;

   typedef std::vector< ::giskard_msgs::SemanticVector3_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::giskard_msgs::SemanticVector3_<ContainerAllocator> >::other >  _vectors_type;
  _vectors_type vectors;

   typedef  ::giskard_msgs::WholeBodyCommand_<ContainerAllocator>  _current_command_type;
  _current_command_type current_command;

   typedef uint64_t _current_command_hash_type;
  _current_command_hash_type current_command_hash;





  typedef boost::shared_ptr< ::giskard_msgs::ControllerFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::giskard_msgs::ControllerFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct ControllerFeedback_

typedef ::giskard_msgs::ControllerFeedback_<std::allocator<void> > ControllerFeedback;

typedef boost::shared_ptr< ::giskard_msgs::ControllerFeedback > ControllerFeedbackPtr;
typedef boost::shared_ptr< ::giskard_msgs::ControllerFeedback const> ControllerFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::giskard_msgs::ControllerFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::giskard_msgs::ControllerFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace giskard_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'shape_msgs': ['/opt/ros/kinetic/share/shape_msgs/cmake/../msg'], 'giskard_msgs': ['/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg', '/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'trajectory_msgs': ['/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::giskard_msgs::ControllerFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::giskard_msgs::ControllerFeedback_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::giskard_msgs::ControllerFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::giskard_msgs::ControllerFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::giskard_msgs::ControllerFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::giskard_msgs::ControllerFeedback_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::giskard_msgs::ControllerFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6aebd1d0d24e8782cff521a077935cd4";
  }

  static const char* value(const ::giskard_msgs::ControllerFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6aebd1d0d24e8782ULL;
  static const uint64_t static_value2 = 0xcff521a077935cd4ULL;
};

template<class ContainerAllocator>
struct DataType< ::giskard_msgs::ControllerFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "giskard_msgs/ControllerFeedback";
  }

  static const char* value(const ::giskard_msgs::ControllerFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::giskard_msgs::ControllerFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Feedback provided by giskard controllers.\n\
\n\
# Header to communicate timestamps, and being compatible with message-filters.\n\
std_msgs/Header header\n\
# Flag to indicate whether the watchdog is active\n\
bool watchdog_active\n\
# Commands issued to motor controllers, expressed with semantics hints.\n\
sensor_msgs/JointState commands\n\
# Slack values of task functions, expressed with semantics hints.\n\
giskard_msgs/SemanticFloat64[] slacks\n\
# Internal double expressions used to decide convergence\n\
giskard_msgs/SemanticFloat64[] convergence_features\n\
# Internal double expressions wired through for debugging\n\
giskard_msgs/SemanticFloat64[] doubles\n\
# Internal vector expressions wired through for debugging\n\
giskard_msgs/SemanticVector3[] vectors\n\
\n\
# Command that the controller is currently pursuing\n\
giskard_msgs/WholeBodyCommand current_command\n\
# Hash of the current command calculated by the controller\n\
uint64 current_command_hash\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: sensor_msgs/JointState\n\
# This is a message that holds data to describe the state of a set of torque controlled joints. \n\
#\n\
# The state of each joint (revolute or prismatic) is defined by:\n\
#  * the position of the joint (rad or m),\n\
#  * the velocity of the joint (rad/s or m/s) and \n\
#  * the effort that is applied in the joint (Nm or N).\n\
#\n\
# Each joint is uniquely identified by its name\n\
# The header specifies the time at which the joint states were recorded. All the joint states\n\
# in one message have to be recorded at the same time.\n\
#\n\
# This message consists of a multiple arrays, one for each part of the joint state. \n\
# The goal is to make each of the fields optional. When e.g. your joints have no\n\
# effort associated with them, you can leave the effort array empty. \n\
#\n\
# All arrays in this message should have the same size, or be empty.\n\
# This is the only way to uniquely associate the joint name with the correct\n\
# states.\n\
\n\
\n\
Header header\n\
\n\
string[] name\n\
float64[] position\n\
float64[] velocity\n\
float64[] effort\n\
\n\
================================================================================\n\
MSG: giskard_msgs/SemanticFloat64\n\
# A floating-point with semantics hint attached.\n\
# Note: I know this is not much but better than just the number. ;)\n\
\n\
# Hint about the semantics of this number. Examples: frame_id, joint-name, or task dimension.\n\
string semantics\n\
# The actual value communicated.\n\
float64 value\n\
\n\
================================================================================\n\
MSG: giskard_msgs/SemanticVector3\n\
# A 3d vector with semantics hint attached.\n\
# Note: I know this is not much but better than just the number. ;)\n\
\n\
# Hint about the semantics of this number. Examples: frame_id, joint-name, or task dimension.\n\
string semantics\n\
# The actual value communicated.\n\
geometry_msgs/Vector3 value\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Vector3\n\
# This represents a vector in free space. \n\
# It is only meant to represent a direction. Therefore, it does not\n\
# make sense to apply a translation to it (e.g., when applying a \n\
# generic rigid transformation to a Vector3, tf2 will only apply the\n\
# rotation). If you want your data to be translatable too, use the\n\
# geometry_msgs/Point message instead.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
================================================================================\n\
MSG: giskard_msgs/WholeBodyCommand\n\
# A whole-body command message for a mobile manipulator with a morphology \n\
# compatible with the PR2 robot. The message was designed to support alternative\n\
# ways of specifying a command.\n\
\n\
# definitions of possible values to use as type\n\
uint8 STANDARD_CONTROLLER=0\n\
uint8 YAML_CONTROLLER=1\n\
\n\
# use of the above constants to indicate the type of command\n\
uint8 type\n\
\n\
# standard controllers\n\
giskard_msgs/ArmCommand right_ee # command for right arm\n\
giskard_msgs/ArmCommand left_ee # command for left arm\n\
\n\
# yaml controllers\n\
string yaml_spec # complete specification of controller\n\
giskard_msgs/SemanticFloat64[] convergence_thresholds # thresholds used to decide convergence of motion\n\
\n\
================================================================================\n\
MSG: giskard_msgs/ArmCommand\n\
# A command message for robotic manipulators that exposes a couple\n\
# of alternative ways of specifying commands.\n\
\n\
# Definitions of possible values used for type\n\
uint8 IGNORE_GOAL=0 # Ignore the rest of this command.\n\
uint8 CARTESIAN_GOAL=1 # Use the PoseStamped.\n\
uint8 JOINT_GOAL=2 # Use the list of floats.\n\
\n\
# use one of the above constants to indicate the type of command\n\
uint8 type\n\
\n\
# Cartesian goal for the arm.\n\
# Note: The header will be used to resolve goal using tf.\n\
geometry_msgs/PoseStamped goal_pose\n\
\n\
# Joint goal for the arm.\n\
float64[] goal_configuration\n\
\n\
# List of internal double expressions with thresholds to decide convergence\n\
giskard_msgs/SemanticFloat64[] convergence_thresholds\n\
\n\
================================================================================\n\
MSG: geometry_msgs/PoseStamped\n\
# A Pose with reference coordinate frame and timestamp\n\
Header header\n\
Pose pose\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of position and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
";
  }

  static const char* value(const ::giskard_msgs::ControllerFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::giskard_msgs::ControllerFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.watchdog_active);
      stream.next(m.commands);
      stream.next(m.slacks);
      stream.next(m.convergence_features);
      stream.next(m.doubles);
      stream.next(m.vectors);
      stream.next(m.current_command);
      stream.next(m.current_command_hash);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ControllerFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::giskard_msgs::ControllerFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::giskard_msgs::ControllerFeedback_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "watchdog_active: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.watchdog_active);
    s << indent << "commands: ";
    s << std::endl;
    Printer< ::sensor_msgs::JointState_<ContainerAllocator> >::stream(s, indent + "  ", v.commands);
    s << indent << "slacks[]" << std::endl;
    for (size_t i = 0; i < v.slacks.size(); ++i)
    {
      s << indent << "  slacks[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::giskard_msgs::SemanticFloat64_<ContainerAllocator> >::stream(s, indent + "    ", v.slacks[i]);
    }
    s << indent << "convergence_features[]" << std::endl;
    for (size_t i = 0; i < v.convergence_features.size(); ++i)
    {
      s << indent << "  convergence_features[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::giskard_msgs::SemanticFloat64_<ContainerAllocator> >::stream(s, indent + "    ", v.convergence_features[i]);
    }
    s << indent << "doubles[]" << std::endl;
    for (size_t i = 0; i < v.doubles.size(); ++i)
    {
      s << indent << "  doubles[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::giskard_msgs::SemanticFloat64_<ContainerAllocator> >::stream(s, indent + "    ", v.doubles[i]);
    }
    s << indent << "vectors[]" << std::endl;
    for (size_t i = 0; i < v.vectors.size(); ++i)
    {
      s << indent << "  vectors[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::giskard_msgs::SemanticVector3_<ContainerAllocator> >::stream(s, indent + "    ", v.vectors[i]);
    }
    s << indent << "current_command: ";
    s << std::endl;
    Printer< ::giskard_msgs::WholeBodyCommand_<ContainerAllocator> >::stream(s, indent + "  ", v.current_command);
    s << indent << "current_command_hash: ";
    Printer<uint64_t>::stream(s, indent + "  ", v.current_command_hash);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GISKARD_MSGS_MESSAGE_CONTROLLERFEEDBACK_H