// Generated by gencpp from file rmep_msgs/RobotBlasterRequest.msg
// DO NOT EDIT!


#ifndef RMEP_MSGS_MESSAGE_ROBOTBLASTERREQUEST_H
#define RMEP_MSGS_MESSAGE_ROBOTBLASTERREQUEST_H


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
struct RobotBlasterRequest_
{
  typedef RobotBlasterRequest_<ContainerAllocator> Type;

  RobotBlasterRequest_()
    : type(0)
    , count(0)  {
    }
  RobotBlasterRequest_(const ContainerAllocator& _alloc)
    : type(0)
    , count(0)  {
  (void)_alloc;
    }



   typedef uint8_t _type_type;
  _type_type type;

   typedef uint32_t _count_type;
  _count_type count;





  typedef boost::shared_ptr< ::rmep_msgs::RobotBlasterRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rmep_msgs::RobotBlasterRequest_<ContainerAllocator> const> ConstPtr;

}; // struct RobotBlasterRequest_

typedef ::rmep_msgs::RobotBlasterRequest_<std::allocator<void> > RobotBlasterRequest;

typedef boost::shared_ptr< ::rmep_msgs::RobotBlasterRequest > RobotBlasterRequestPtr;
typedef boost::shared_ptr< ::rmep_msgs::RobotBlasterRequest const> RobotBlasterRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rmep_msgs::RobotBlasterRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rmep_msgs::RobotBlasterRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rmep_msgs::RobotBlasterRequest_<ContainerAllocator1> & lhs, const ::rmep_msgs::RobotBlasterRequest_<ContainerAllocator2> & rhs)
{
  return lhs.type == rhs.type &&
    lhs.count == rhs.count;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rmep_msgs::RobotBlasterRequest_<ContainerAllocator1> & lhs, const ::rmep_msgs::RobotBlasterRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rmep_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::rmep_msgs::RobotBlasterRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rmep_msgs::RobotBlasterRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rmep_msgs::RobotBlasterRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rmep_msgs::RobotBlasterRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rmep_msgs::RobotBlasterRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rmep_msgs::RobotBlasterRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rmep_msgs::RobotBlasterRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d568bd241b5bd8a9250392500f0935b5";
  }

  static const char* value(const ::rmep_msgs::RobotBlasterRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd568bd241b5bd8a9ULL;
  static const uint64_t static_value2 = 0x250392500f0935b5ULL;
};

template<class ContainerAllocator>
struct DataType< ::rmep_msgs::RobotBlasterRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rmep_msgs/RobotBlasterRequest";
  }

  static const char* value(const ::rmep_msgs::RobotBlasterRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rmep_msgs::RobotBlasterRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 type\n"
"uint32 count\n"
;
  }

  static const char* value(const ::rmep_msgs::RobotBlasterRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rmep_msgs::RobotBlasterRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.type);
      stream.next(m.count);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RobotBlasterRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rmep_msgs::RobotBlasterRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rmep_msgs::RobotBlasterRequest_<ContainerAllocator>& v)
  {
    s << indent << "type: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.type);
    s << indent << "count: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.count);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RMEP_MSGS_MESSAGE_ROBOTBLASTERREQUEST_H