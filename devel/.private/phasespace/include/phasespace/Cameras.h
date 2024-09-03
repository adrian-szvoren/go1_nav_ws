// Generated by gencpp from file phasespace/Cameras.msg
// DO NOT EDIT!


#ifndef PHASESPACE_MESSAGE_CAMERAS_H
#define PHASESPACE_MESSAGE_CAMERAS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <phasespace/Camera.h>

namespace phasespace
{
template <class ContainerAllocator>
struct Cameras_
{
  typedef Cameras_<ContainerAllocator> Type;

  Cameras_()
    : cameras()  {
    }
  Cameras_(const ContainerAllocator& _alloc)
    : cameras(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::phasespace::Camera_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::phasespace::Camera_<ContainerAllocator> >> _cameras_type;
  _cameras_type cameras;





  typedef boost::shared_ptr< ::phasespace::Cameras_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::phasespace::Cameras_<ContainerAllocator> const> ConstPtr;

}; // struct Cameras_

typedef ::phasespace::Cameras_<std::allocator<void> > Cameras;

typedef boost::shared_ptr< ::phasespace::Cameras > CamerasPtr;
typedef boost::shared_ptr< ::phasespace::Cameras const> CamerasConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::phasespace::Cameras_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::phasespace::Cameras_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::phasespace::Cameras_<ContainerAllocator1> & lhs, const ::phasespace::Cameras_<ContainerAllocator2> & rhs)
{
  return lhs.cameras == rhs.cameras;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::phasespace::Cameras_<ContainerAllocator1> & lhs, const ::phasespace::Cameras_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace phasespace

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::phasespace::Cameras_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::phasespace::Cameras_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::phasespace::Cameras_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::phasespace::Cameras_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::phasespace::Cameras_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::phasespace::Cameras_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::phasespace::Cameras_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c7ff3700c0cc89b1664f151f01ec9489";
  }

  static const char* value(const ::phasespace::Cameras_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc7ff3700c0cc89b1ULL;
  static const uint64_t static_value2 = 0x664f151f01ec9489ULL;
};

template<class ContainerAllocator>
struct DataType< ::phasespace::Cameras_<ContainerAllocator> >
{
  static const char* value()
  {
    return "phasespace/Cameras";
  }

  static const char* value(const ::phasespace::Cameras_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::phasespace::Cameras_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Camera[] cameras\n"
"================================================================================\n"
"MSG: phasespace/Camera\n"
"uint32 id\n"
"uint32 flags\n"
"float32 x\n"
"float32 y\n"
"float32 z\n"
"float32 qw\n"
"float32 qx\n"
"float32 qy\n"
"float32 qz\n"
"float32 cond\n"
;
  }

  static const char* value(const ::phasespace::Cameras_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::phasespace::Cameras_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.cameras);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Cameras_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::phasespace::Cameras_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::phasespace::Cameras_<ContainerAllocator>& v)
  {
    s << indent << "cameras[]" << std::endl;
    for (size_t i = 0; i < v.cameras.size(); ++i)
    {
      s << indent << "  cameras[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::phasespace::Camera_<ContainerAllocator> >::stream(s, indent + "    ", v.cameras[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // PHASESPACE_MESSAGE_CAMERAS_H