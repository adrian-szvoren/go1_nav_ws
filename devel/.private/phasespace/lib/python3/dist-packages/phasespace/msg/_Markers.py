# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from phasespace/Markers.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import phasespace.msg

class Markers(genpy.Message):
  _md5sum = "dd435738f02ace3b863bc0a3b36d34db"
  _type = "phasespace/Markers"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """Marker[] markers
================================================================================
MSG: phasespace/Marker
uint32 id
uint32 flags
uint64 time
float32 x
float32 y
float32 z
float32 cond
"""
  __slots__ = ['markers']
  _slot_types = ['phasespace/Marker[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       markers

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Markers, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.markers is None:
        self.markers = []
    else:
      self.markers = []

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
      length = len(self.markers)
      buff.write(_struct_I.pack(length))
      for val1 in self.markers:
        _x = val1
        buff.write(_get_struct_2IQ4f().pack(_x.id, _x.flags, _x.time, _x.x, _x.y, _x.z, _x.cond))
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
      if self.markers is None:
        self.markers = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.markers = []
      for i in range(0, length):
        val1 = phasespace.msg.Marker()
        _x = val1
        start = end
        end += 32
        (_x.id, _x.flags, _x.time, _x.x, _x.y, _x.z, _x.cond,) = _get_struct_2IQ4f().unpack(str[start:end])
        self.markers.append(val1)
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
      length = len(self.markers)
      buff.write(_struct_I.pack(length))
      for val1 in self.markers:
        _x = val1
        buff.write(_get_struct_2IQ4f().pack(_x.id, _x.flags, _x.time, _x.x, _x.y, _x.z, _x.cond))
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
      if self.markers is None:
        self.markers = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.markers = []
      for i in range(0, length):
        val1 = phasespace.msg.Marker()
        _x = val1
        start = end
        end += 32
        (_x.id, _x.flags, _x.time, _x.x, _x.y, _x.z, _x.cond,) = _get_struct_2IQ4f().unpack(str[start:end])
        self.markers.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2IQ4f = None
def _get_struct_2IQ4f():
    global _struct_2IQ4f
    if _struct_2IQ4f is None:
        _struct_2IQ4f = struct.Struct("<2IQ4f")
    return _struct_2IQ4f
