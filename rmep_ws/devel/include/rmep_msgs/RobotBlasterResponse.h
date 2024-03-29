// Generated by gencpp from file rmep_msgs/RobotBlasterResponse.msg
// DO NOT EDIT!


#ifndef RMEP_MSGS_MESSAGE_ROBOTBLASTERRESPONSE_H
#define RMEP_MSGS_MESSAGE_ROBOTBLASTERRESPONSE_H


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
struct RobotBlasterResponse_
{
  typedef RobotBlasterResponse_<ContainerAllocator> Type;

  RobotBlasterResponse_()
    : result(0)  {
    }
  RobotBlasterResponse_(const ContainerAllocator& _alloc)
    : result(0)  {
  (void)_alloc;
    }



   typedef uint8_t _result_type;
  _result_type result;





  typedef boost::shared_ptr< ::rmep_msgs::RobotBlasterResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rmep_msgs::RobotBlasterResponse_<ContainerAllocator> const> ConstPtr;

}; // struct RobotBlasterResponse_

typedef ::rmep_msgs::RobotBlasterResponse_<std::allocator<void> > RobotBlasterResponse;

typedef boost::shared_ptr< ::rmep_msgs::RobotBlasterResponse > RobotBlasterResponsePtr;
typedef boost::shared_ptr< ::rmep_msgs::RobotBlasterResponse const> RobotBlasterResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rmep_msgs::RobotBlasterResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rmep_msgs::RobotBlasterResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rmep_msgs::RobotBlasterResponse_<ContainerAllocator1> & lhs, const ::rmep_msgs::RobotBlasterResponse_<ContainerAllocator2> & rhs)
{
  return lhs.result == rhs.result;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rmep_msgs::RobotBlasterResponse_<ContainerAllocator1> & lhs, const ::rmep_msgs::RobotBlasterResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rmep_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::rmep_msgs::RobotBlasterResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rmep_msgs::RobotBlasterResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rmep_msgs::RobotBlasterResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rmep_msgs::RobotBlasterResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rmep_msgs::RobotBlasterResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rmep_msgs::RobotBlasterResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rmep_msgs::RobotBlasterResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "25458147911545c320c4c0a299eff763";
  }

  static const char* value(const ::rmep_msgs::RobotBlasterResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x25458147911545c3ULL;
  static const uint64_t static_value2 = 0x20c4c0a299eff763ULL;
};

template<class ContainerAllocator>
struct DataType< ::rmep_msgs::RobotBlasterResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rmep_msgs/RobotBlasterResponse";
  }

  static const char* value(const ::rmep_msgs::RobotBlasterResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rmep_msgs::RobotBlasterResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 result\n"
"\n"
;
  }

  static const char* value(const ::rmep_msgs::RobotBlasterResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rmep_msgs::RobotBlasterResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RobotBlasterResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rmep_msgs::RobotBlasterResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rmep_msgs::RobotBlasterResponse_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RMEP_MSGS_MESSAGE_ROBOTBLASTERRESPONSE_H
