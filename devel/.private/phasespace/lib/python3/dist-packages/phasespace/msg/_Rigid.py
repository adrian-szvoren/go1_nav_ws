# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from phasespace/Rigid.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class Rigid(genpy.Message):
  _md5sum = "38b7ebb6b44ca41939e6c9ef2ebb6326"
  _type = "phasespace/Rigid"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """uint32 id
uint32 flags
uint64 time
float32 x
float32 y
float32 z
float32 qw
float32 qx
float32 qy
float32 qz
float32 cond
"""
  __slots__ = ['id','flags','time','x','y','z','qw','qx','qy','qz','cond']
  _slot_types = ['uint32','uint32','uint64','float32','float32','float32','float32','float32','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       id,flags,time,x,y,z,qw,qx,qy,qz,cond

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Rigid, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.id is None:
        self.id = 0
      if self.flags is None:
        self.flags = 0
      if self.time is None:
        self.time = 0
      if self.x is None:
        self.x = 0.
      if self.y is None:
        self.y = 0.
      if self.z is None:
        self.z = 0.
      if self.qw is None:
        self.qw = 0.
      if self.qx is None:
        self.qx = 0.
      if self.qy is None:
        self.qy = 0.
      if self.qz is None:
        self.qz = 0.
      if self.cond is None:
        self.cond = 0.
    else:
      self.id = 0
      self.flags = 0
      self.time = 0
      self.x = 0.
      self.y = 0.
      self.z = 0.
      self.qw = 0.
      self.qx = 0.
      self.qy = 0.
      self.qz = 0.
      self.cond = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_2IQ8f().pack(_x.id, _x.flags, _x.time, _x.x, _x.y, _x.z, _x.qw, _x.qx, _x.qy, _x.qz, _x.cond))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 48
      (_x.id, _x.flags, _x.time, _x.x, _x.y, _x.z, _x.qw, _x.qx, _x.qy, _x.qz, _x.cond,) = _get_struct_2IQ8f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_2IQ8f().pack(_x.id, _x.flags, _x.time, _x.x, _x.y, _x.z, _x.qw, _x.qx, _x.qy, _x.qz, _x.cond))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 48
      (_x.id, _x.flags, _x.time, _x.x, _x.y, _x.z, _x.qw, _x.qx, _x.qy, _x.qz, _x.cond,) = _get_struct_2IQ8f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2IQ8f = None
def _get_struct_2IQ8f():
    global _struct_2IQ8f
    if _struct_2IQ8f is None:
        _struct_2IQ8f = struct.Struct("<2IQ8f")
    return _struct_2IQ8f