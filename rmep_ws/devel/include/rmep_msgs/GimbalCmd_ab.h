// Generated by gencpp from file rmep_msgs/GimbalCmd_ab.msg
// DO NOT EDIT!


#ifndef RMEP_MSGS_MESSAGE_GIMBALCMD_AB_H
#define RMEP_MSGS_MESSAGE_GIMBALCMD_AB_H


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
struct GimbalCmd_ab_
{
  typedef GimbalCmd_ab_<ContainerAllocator> Type;

  GimbalCmd_ab_()
    : pitch(0)
    , yaw(0)
    , pitch_speed(0)
    , yaw_speed(0)  {
    }
  GimbalCmd_ab_(const ContainerAllocator& _alloc)
    : pitch(0)
    , yaw(0)
    , pitch_speed(0)
    , yaw_speed(0)  {
  (void)_alloc;
    }



   typedef int32_t _pitch_type;
  _pitch_type pitch;

   typedef int32_t _yaw_type;
  _yaw_type yaw;

   typedef int32_t _pitch_speed_type;
  _pitch_speed_type pitch_speed;

   typedef int32_t _yaw_speed_type;
  _yaw_speed_type yaw_speed;





  typedef boost::shared_ptr< ::rmep_msgs::GimbalCmd_ab_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rmep_msgs::GimbalCmd_ab_<ContainerAllocator> const> ConstPtr;

}; // struct GimbalCmd_ab_

typedef ::rmep_msgs::GimbalCmd_ab_<std::allocator<void> > GimbalCmd_ab;

typedef boost::shared_ptr< ::rmep_msgs::GimbalCmd_ab > GimbalCmd_abPtr;
typedef boost::shared_ptr< ::rmep_msgs::GimbalCmd_ab const> GimbalCmd_abConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rmep_msgs::GimbalCmd_ab_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rmep_msgs::GimbalCmd_ab_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rmep_msgs::GimbalCmd_ab_<ContainerAllocator1> & lhs, const ::rmep_msgs::GimbalCmd_ab_<ContainerAllocator2> & rhs)
{
  return lhs.pitch == rhs.pitch &&
    lhs.yaw == rhs.yaw &&
    lhs.pitch_speed == rhs.pitch_speed &&
    lhs.yaw_speed == rhs.yaw_speed;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rmep_msgs::GimbalCmd_ab_<ContainerAllocator1> & lhs, const ::rmep_msgs::GimbalCmd_ab_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rmep_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::rmep_msgs::GimbalCmd_ab_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rmep_msgs::GimbalCmd_ab_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rmep_msgs::GimbalCmd_ab_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rmep_msgs::GimbalCmd_ab_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rmep_msgs::GimbalCmd_ab_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rmep_msgs::GimbalCmd_ab_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rmep_msgs::GimbalCmd_ab_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5fcd51e279a0c28401dbfc5042b672ff";
  }

  static const char* value(const ::rmep_msgs::GimbalCmd_ab_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5fcd51e279a0c284ULL;
  static const uint64_t static_value2 = 0x01dbfc5042b672ffULL;
};

template<class ContainerAllocator>
struct DataType< ::rmep_msgs::GimbalCmd_ab_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rmep_msgs/GimbalCmd_ab";
  }

  static const char* value(const ::rmep_msgs::GimbalCmd_ab_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rmep_msgs::GimbalCmd_ab_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 pitch\n"
"int32 yaw\n"
"int32 pitch_speed\n"
"int32 yaw_speed\n"
;
  }

  static const char* value(const ::rmep_msgs::GimbalCmd_ab_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rmep_msgs::GimbalCmd_ab_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pitch);
      stream.next(m.yaw);
      stream.next(m.pitch_speed);
      stream.next(m.yaw_speed);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GimbalCmd_ab_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rmep_msgs::GimbalCmd_ab_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rmep_msgs::GimbalCmd_ab_<ContainerAllocator>& v)
  {
    s << indent << "pitch: ";
    Printer<int32_t>::stream(s, indent + "  ", v.pitch);
    s << indent << "yaw: ";
    Printer<int32_t>::stream(s, indent + "  ", v.yaw);
    s << indent << "pitch_speed: ";
    Printer<int32_t>::stream(s, indent + "  ", v.pitch_speed);
    s << indent << "yaw_speed: ";
    Printer<int32_t>::stream(s, indent + "  ", v.yaw_speed);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RMEP_MSGS_MESSAGE_GIMBALCMD_AB_H
