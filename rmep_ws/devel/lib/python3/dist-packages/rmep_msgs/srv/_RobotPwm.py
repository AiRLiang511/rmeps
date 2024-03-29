# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from rmep_msgs/RobotPwmRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class RobotPwmRequest(genpy.Message):
  _md5sum = "d2ed9194cde38921e6036eaa7a286dad"
  _type = "rmep_msgs/RobotPwmRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """float32 pwm1_freq
float32 pwm1_value
float32 pwm2_freq
float32 pwm2_value
float32 pwm3_freq
float32 pwm3_value
float32 pwm4_freq
float32 pwm4_value
float32 pwm5_freq
float32 pwm5_value
float32 pwm6_freq
float32 pwm6_value
"""
  __slots__ = ['pwm1_freq','pwm1_value','pwm2_freq','pwm2_value','pwm3_freq','pwm3_value','pwm4_freq','pwm4_value','pwm5_freq','pwm5_value','pwm6_freq','pwm6_value']
  _slot_types = ['float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       pwm1_freq,pwm1_value,pwm2_freq,pwm2_value,pwm3_freq,pwm3_value,pwm4_freq,pwm4_value,pwm5_freq,pwm5_value,pwm6_freq,pwm6_value

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(RobotPwmRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.pwm1_freq is None:
        self.pwm1_freq = 0.
      if self.pwm1_value is None:
        self.pwm1_value = 0.
      if self.pwm2_freq is None:
        self.pwm2_freq = 0.
      if self.pwm2_value is None:
        self.pwm2_value = 0.
      if self.pwm3_freq is None:
        self.pwm3_freq = 0.
      if self.pwm3_value is None:
        self.pwm3_value = 0.
      if self.pwm4_freq is None:
        self.pwm4_freq = 0.
      if self.pwm4_value is None:
        self.pwm4_value = 0.
      if self.pwm5_freq is None:
        self.pwm5_freq = 0.
      if self.pwm5_value is None:
        self.pwm5_value = 0.
      if self.pwm6_freq is None:
        self.pwm6_freq = 0.
      if self.pwm6_value is None:
        self.pwm6_value = 0.
    else:
      self.pwm1_freq = 0.
      self.pwm1_value = 0.
      self.pwm2_freq = 0.
      self.pwm2_value = 0.
      self.pwm3_freq = 0.
      self.pwm3_value = 0.
      self.pwm4_freq = 0.
      self.pwm4_value = 0.
      self.pwm5_freq = 0.
      self.pwm5_value = 0.
      self.pwm6_freq = 0.
      self.pwm6_value = 0.

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
      buff.write(_get_struct_12f().pack(_x.pwm1_freq, _x.pwm1_value, _x.pwm2_freq, _x.pwm2_value, _x.pwm3_freq, _x.pwm3_value, _x.pwm4_freq, _x.pwm4_value, _x.pwm5_freq, _x.pwm5_value, _x.pwm6_freq, _x.pwm6_value))
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
      (_x.pwm1_freq, _x.pwm1_value, _x.pwm2_freq, _x.pwm2_value, _x.pwm3_freq, _x.pwm3_value, _x.pwm4_freq, _x.pwm4_value, _x.pwm5_freq, _x.pwm5_value, _x.pwm6_freq, _x.pwm6_value,) = _get_struct_12f().unpack(str[start:end])
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
      buff.write(_get_struct_12f().pack(_x.pwm1_freq, _x.pwm1_value, _x.pwm2_freq, _x.pwm2_value, _x.pwm3_freq, _x.pwm3_value, _x.pwm4_freq, _x.pwm4_value, _x.pwm5_freq, _x.pwm5_value, _x.pwm6_freq, _x.pwm6_value))
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
      (_x.pwm1_freq, _x.pwm1_value, _x.pwm2_freq, _x.pwm2_value, _x.pwm3_freq, _x.pwm3_value, _x.pwm4_freq, _x.pwm4_value, _x.pwm5_freq, _x.pwm5_value, _x.pwm6_freq, _x.pwm6_value,) = _get_struct_12f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_12f = None
def _get_struct_12f():
    global _struct_12f
    if _struct_12f is None:
        _struct_12f = struct.Struct("<12f")
    return _struct_12f
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from rmep_msgs/RobotPwmResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class RobotPwmResponse(genpy.Message):
  _md5sum = "25458147911545c320c4c0a299eff763"
  _type = "rmep_msgs/RobotPwmResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """uint8 result



"""
  __slots__ = ['result']
  _slot_types = ['uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       result

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(RobotPwmResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.result is None:
        self.result = 0
    else:
      self.result = 0

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
      _x = self.result
      buff.write(_get_struct_B().pack(_x))
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
      start = end
      end += 1
      (self.result,) = _get_struct_B().unpack(str[start:end])
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
      _x = self.result
      buff.write(_get_struct_B().pack(_x))
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
      start = end
      end += 1
      (self.result,) = _get_struct_B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
class RobotPwm(object):
  _type          = 'rmep_msgs/RobotPwm'
  _md5sum = '6c239c834ae059903d50c5af0762999e'
  _request_class  = RobotPwmRequest
  _response_class = RobotPwmResponse
