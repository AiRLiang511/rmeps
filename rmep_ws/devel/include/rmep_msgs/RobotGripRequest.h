// Generated by gencpp from file rmep_msgs/RobotGripRequest.msg
// DO NOT EDIT!


#ifndef RMEP_MSGS_MESSAGE_ROBOTGRIPREQUEST_H
#define RMEP_MSGS_MESSAGE_ROBOTGRIPREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rmep_msgs
{
template <class ContainerAllocator>
struct RobotGripRequest_
{
  typedef RobotGripRequest_<ContainerAllocator> Type;

  RobotGripRequest_()
    : state(0)
    , value(0.0)  {
    }
  RobotGripRequest_(const ContainerAllocator& _alloc)
    : state(0)
    , value(0.0)  {
  (void)_alloc;
    }



   typedef uint8_t _state_type;
  _state_type state;

   typedef float _value_type;
  _value_type value;





  typedef boost::shared_ptr< ::rmep_msgs::RobotGripRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rmep_msgs::RobotGripRequest_<ContainerAllocator> const> ConstPtr;

}; // struct RobotGripRequest_

typedef ::rmep_msgs::RobotGripRequest_<std::allocator<void> > RobotGripRequest;

typedef boost::shared_ptr< ::rmep_msgs::RobotGripRequest > RobotGripRequestPtr;
typedef boost::shared_ptr< ::rmep_msgs::RobotGripRequest const> RobotGripRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rmep_msgs::RobotGripRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rmep_msgs::RobotGripRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rmep_msgs::RobotGripRequest_<ContainerAllocator1> & lhs, const ::rmep_msgs::RobotGripRequest_<ContainerAllocator2> & rhs)
{
  return lhs.state == rhs.state &&
    lhs.value == rhs.value;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rmep_msgs::RobotGripRequest_<ContainerAllocator1> & lhs, const ::rmep_msgs::RobotGripRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rmep_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::rmep_msgs::RobotGripRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rmep_msgs::RobotGripRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rmep_msgs::RobotGripRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rmep_msgs::RobotGripRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rmep_msgs::RobotGripRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rmep_msgs::RobotGripRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rmep_msgs::RobotGripRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "75c1594d89f3a134582474c9f4e16d45";
  }

  static const char* value(const ::rmep_msgs::RobotGripRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x75c1594d89f3a134ULL;
  static const uint64_t static_value2 = 0x582474c9f4e16d45ULL;
};

template<class ContainerAllocator>
struct DataType< ::rmep_msgs::RobotGripRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rmep_msgs/RobotGripRequest";
  }

  static const char* value(const ::rmep_msgs::RobotGripRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rmep_msgs::RobotGripRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 state\n"
"float32 value\n"
;
  }

  static const char* value(const ::rmep_msgs::RobotGripRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rmep_msgs::RobotGripRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.state);
      stream.next(m.value);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RobotGripRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rmep_msgs::RobotGripRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rmep_msgs::RobotGripRequest_<ContainerAllocator>& v)
  {
    s << indent << "state: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.state);
    s << indent << "value: ";
    Printer<float>::stream(s, indent + "  ", v.value);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RMEP_MSGS_MESSAGE_ROBOTGRIPREQUEST_H
