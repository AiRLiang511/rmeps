// Generated by gencpp from file rmep_msgs/RobotPwmRequest.msg
// DO NOT EDIT!


#ifndef RMEP_MSGS_MESSAGE_ROBOTPWMREQUEST_H
#define RMEP_MSGS_MESSAGE_ROBOTPWMREQUEST_H


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
struct RobotPwmRequest_
{
  typedef RobotPwmRequest_<ContainerAllocator> Type;

  RobotPwmRequest_()
    : pwm1_freq(0.0)
    , pwm1_value(0.0)
    , pwm2_freq(0.0)
    , pwm2_value(0.0)
    , pwm3_freq(0.0)
    , pwm3_value(0.0)
    , pwm4_freq(0.0)
    , pwm4_value(0.0)
    , pwm5_freq(0.0)
    , pwm5_value(0.0)
    , pwm6_freq(0.0)
    , pwm6_value(0.0)  {
    }
  RobotPwmRequest_(const ContainerAllocator& _alloc)
    : pwm1_freq(0.0)
    , pwm1_value(0.0)
    , pwm2_freq(0.0)
    , pwm2_value(0.0)
    , pwm3_freq(0.0)
    , pwm3_value(0.0)
    , pwm4_freq(0.0)
    , pwm4_value(0.0)
    , pwm5_freq(0.0)
    , pwm5_value(0.0)
    , pwm6_freq(0.0)
    , pwm6_value(0.0)  {
  (void)_alloc;
    }



   typedef float _pwm1_freq_type;
  _pwm1_freq_type pwm1_freq;

   typedef float _pwm1_value_type;
  _pwm1_value_type pwm1_value;

   typedef float _pwm2_freq_type;
  _pwm2_freq_type pwm2_freq;

   typedef float _pwm2_value_type;
  _pwm2_value_type pwm2_value;

   typedef float _pwm3_freq_type;
  _pwm3_freq_type pwm3_freq;

   typedef float _pwm3_value_type;
  _pwm3_value_type pwm3_value;

   typedef float _pwm4_freq_type;
  _pwm4_freq_type pwm4_freq;

   typedef float _pwm4_value_type;
  _pwm4_value_type pwm4_value;

   typedef float _pwm5_freq_type;
  _pwm5_freq_type pwm5_freq;

   typedef float _pwm5_value_type;
  _pwm5_value_type pwm5_value;

   typedef float _pwm6_freq_type;
  _pwm6_freq_type pwm6_freq;

   typedef float _pwm6_value_type;
  _pwm6_value_type pwm6_value;





  typedef boost::shared_ptr< ::rmep_msgs::RobotPwmRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rmep_msgs::RobotPwmRequest_<ContainerAllocator> const> ConstPtr;

}; // struct RobotPwmRequest_

typedef ::rmep_msgs::RobotPwmRequest_<std::allocator<void> > RobotPwmRequest;

typedef boost::shared_ptr< ::rmep_msgs::RobotPwmRequest > RobotPwmRequestPtr;
typedef boost::shared_ptr< ::rmep_msgs::RobotPwmRequest const> RobotPwmRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rmep_msgs::RobotPwmRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rmep_msgs::RobotPwmRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rmep_msgs::RobotPwmRequest_<ContainerAllocator1> & lhs, const ::rmep_msgs::RobotPwmRequest_<ContainerAllocator2> & rhs)
{
  return lhs.pwm1_freq == rhs.pwm1_freq &&
    lhs.pwm1_value == rhs.pwm1_value &&
    lhs.pwm2_freq == rhs.pwm2_freq &&
    lhs.pwm2_value == rhs.pwm2_value &&
    lhs.pwm3_freq == rhs.pwm3_freq &&
    lhs.pwm3_value == rhs.pwm3_value &&
    lhs.pwm4_freq == rhs.pwm4_freq &&
    lhs.pwm4_value == rhs.pwm4_value &&
    lhs.pwm5_freq == rhs.pwm5_freq &&
    lhs.pwm5_value == rhs.pwm5_value &&
    lhs.pwm6_freq == rhs.pwm6_freq &&
    lhs.pwm6_value == rhs.pwm6_value;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rmep_msgs::RobotPwmRequest_<ContainerAllocator1> & lhs, const ::rmep_msgs::RobotPwmRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rmep_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::rmep_msgs::RobotPwmRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rmep_msgs::RobotPwmRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rmep_msgs::RobotPwmRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rmep_msgs::RobotPwmRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rmep_msgs::RobotPwmRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rmep_msgs::RobotPwmRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rmep_msgs::RobotPwmRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d2ed9194cde38921e6036eaa7a286dad";
  }

  static const char* value(const ::rmep_msgs::RobotPwmRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd2ed9194cde38921ULL;
  static const uint64_t static_value2 = 0xe6036eaa7a286dadULL;
};

template<class ContainerAllocator>
struct DataType< ::rmep_msgs::RobotPwmRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rmep_msgs/RobotPwmRequest";
  }

  static const char* value(const ::rmep_msgs::RobotPwmRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rmep_msgs::RobotPwmRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 pwm1_freq\n"
"float32 pwm1_value\n"
"float32 pwm2_freq\n"
"float32 pwm2_value\n"
"float32 pwm3_freq\n"
"float32 pwm3_value\n"
"float32 pwm4_freq\n"
"float32 pwm4_value\n"
"float32 pwm5_freq\n"
"float32 pwm5_value\n"
"float32 pwm6_freq\n"
"float32 pwm6_value\n"
;
  }

  static const char* value(const ::rmep_msgs::RobotPwmRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rmep_msgs::RobotPwmRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pwm1_freq);
      stream.next(m.pwm1_value);
      stream.next(m.pwm2_freq);
      stream.next(m.pwm2_value);
      stream.next(m.pwm3_freq);
      stream.next(m.pwm3_value);
      stream.next(m.pwm4_freq);
      stream.next(m.pwm4_value);
      stream.next(m.pwm5_freq);
      stream.next(m.pwm5_value);
      stream.next(m.pwm6_freq);
      stream.next(m.pwm6_value);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RobotPwmRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rmep_msgs::RobotPwmRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rmep_msgs::RobotPwmRequest_<ContainerAllocator>& v)
  {
    s << indent << "pwm1_freq: ";
    Printer<float>::stream(s, indent + "  ", v.pwm1_freq);
    s << indent << "pwm1_value: ";
    Printer<float>::stream(s, indent + "  ", v.pwm1_value);
    s << indent << "pwm2_freq: ";
    Printer<float>::stream(s, indent + "  ", v.pwm2_freq);
    s << indent << "pwm2_value: ";
    Printer<float>::stream(s, indent + "  ", v.pwm2_value);
    s << indent << "pwm3_freq: ";
    Printer<float>::stream(s, indent + "  ", v.pwm3_freq);
    s << indent << "pwm3_value: ";
    Printer<float>::stream(s, indent + "  ", v.pwm3_value);
    s << indent << "pwm4_freq: ";
    Printer<float>::stream(s, indent + "  ", v.pwm4_freq);
    s << indent << "pwm4_value: ";
    Printer<float>::stream(s, indent + "  ", v.pwm4_value);
    s << indent << "pwm5_freq: ";
    Printer<float>::stream(s, indent + "  ", v.pwm5_freq);
    s << indent << "pwm5_value: ";
    Printer<float>::stream(s, indent + "  ", v.pwm5_value);
    s << indent << "pwm6_freq: ";
    Printer<float>::stream(s, indent + "  ", v.pwm6_freq);
    s << indent << "pwm6_value: ";
    Printer<float>::stream(s, indent + "  ", v.pwm6_value);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RMEP_MSGS_MESSAGE_ROBOTPWMREQUEST_H
