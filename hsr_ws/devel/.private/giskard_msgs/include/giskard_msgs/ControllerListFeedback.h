// Generated by gencpp from file giskard_msgs/ControllerListFeedback.msg
// DO NOT EDIT!


#ifndef GISKARD_MSGS_MESSAGE_CONTROLLERLISTFEEDBACK_H
#define GISKARD_MSGS_MESSAGE_CONTROLLERLISTFEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace giskard_msgs
{
template <class ContainerAllocator>
struct ControllerListFeedback_
{
  typedef ControllerListFeedback_<ContainerAllocator> Type;

  ControllerListFeedback_()
    : progress(0.0)  {
    }
  ControllerListFeedback_(const ContainerAllocator& _alloc)
    : progress(0.0)  {
  (void)_alloc;
    }



   typedef double _progress_type;
  _progress_type progress;





  typedef boost::shared_ptr< ::giskard_msgs::ControllerListFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::giskard_msgs::ControllerListFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct ControllerListFeedback_

typedef ::giskard_msgs::ControllerListFeedback_<std::allocator<void> > ControllerListFeedback;

typedef boost::shared_ptr< ::giskard_msgs::ControllerListFeedback > ControllerListFeedbackPtr;
typedef boost::shared_ptr< ::giskard_msgs::ControllerListFeedback const> ControllerListFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::giskard_msgs::ControllerListFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::giskard_msgs::ControllerListFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace giskard_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'shape_msgs': ['/opt/ros/kinetic/share/shape_msgs/cmake/../msg'], 'giskard_msgs': ['/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg', '/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'trajectory_msgs': ['/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::giskard_msgs::ControllerListFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::giskard_msgs::ControllerListFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::giskard_msgs::ControllerListFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::giskard_msgs::ControllerListFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::giskard_msgs::ControllerListFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::giskard_msgs::ControllerListFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::giskard_msgs::ControllerListFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7afca0099e0cddc25243b1e3569895fe";
  }

  static const char* value(const ::giskard_msgs::ControllerListFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7afca0099e0cddc2ULL;
  static const uint64_t static_value2 = 0x5243b1e3569895feULL;
};

template<class ContainerAllocator>
struct DataType< ::giskard_msgs::ControllerListFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "giskard_msgs/ControllerListFeedback";
  }

  static const char* value(const ::giskard_msgs::ControllerListFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::giskard_msgs::ControllerListFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
# feedback message\n\
\n\
# value between 0.0 and 1.0 that reports progress towards achieving the controller goals\n\
float64 progress\n\
\n\
";
  }

  static const char* value(const ::giskard_msgs::ControllerListFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::giskard_msgs::ControllerListFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.progress);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ControllerListFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::giskard_msgs::ControllerListFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::giskard_msgs::ControllerListFeedback_<ContainerAllocator>& v)
  {
    s << indent << "progress: ";
    Printer<double>::stream(s, indent + "  ", v.progress);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GISKARD_MSGS_MESSAGE_CONTROLLERLISTFEEDBACK_H