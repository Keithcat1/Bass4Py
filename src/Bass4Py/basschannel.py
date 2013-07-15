from ctypes import *
from .exceptions import *
from .constants import *
try:
 from ctypes.wintypes import *
except:
 BOOL=c_long
 DWORD=c_ulong
 HWND=c_void_p
 WINFUNCTYPE=CFUNCTYPE
QWORD=c_longlong
class BASSCHANNEL(object):
 def __init__(self, **kwargs):
  self.__bass = kwargs['bass']
  self._stream = kwargs['stream']
  self.__bass_channelplay=self.__bass._bass.BASS_ChannelPlay
  self.__bass_channelplay.restype=BOOL
  self.__bass_channelplay.argtypes=[DWORD, BOOL]
  self.__bass_channelpause=self.__bass._bass.BASS_ChannelPause
  self.__bass_channelpause.restype=BOOL
  self.__bass_channelpause.argtype=[DWORD]
  self.__bass_channelstop=self.__bass._bass.BASS_ChannelStop
  self.__bass_channelstop.restype=BOOL
  self.__bass_channelstop.argtypes=[DWORD]
  self.__bass_channelgetposition=self.__bass._bass.BASS_ChannelGetPosition
  self.__bass_channelgetposition.restype=QWORD
  self.__bass_channelgetposition.argtypes=[DWORD,DWORD]
  self.__bass_channelsetposition=self.__bass._bass.BASS_ChannelSetPosition
  self.__bass_channelsetposition.restype=BOOL
  self.__bass_channelsetposition.argtypes=[DWORD,QWORD,DWORD]
  self.__bass_channelgetlength=self.__bass._bass.BASS_ChannelGetLength
  self.__bass_channelgetlength.restype=QWORD
  self.__bass_channelgetlength.argtypes=[DWORD,DWORD]
  self.__bass_channelseconds2bytes=self.__bass._bass.BASS_ChannelSeconds2Bytes
  self.__bass_channelseconds2bytes.restype=QWORD
  self.__bass_channelseconds2bytes.argtypes=[DWORD,c_double]
  self.__bass_channelbytes2seconds=self.__bass._bass.BASS_ChannelBytes2Seconds
  self.__bass_channelbytes2seconds.restype=DWORD
  self.__bass_channelbytes2seconds.argtypes=[DWORD,c_double,QWORD]
  self.__bass_channelflags=self.__bass._bass.BASS_ChannelFlags
  self.__bass_channelflags.restype=DWORD
  self.__bass_channelflags.argtypes=[DWORD,DWORD,DWORD]
  self.__bass_channelget3dattributes=self.__bass._bass.BASS_ChannelGet3DAttributes
  self.__bass_channelget3dattributes.restype=BOOL
  self.__bass_channelget3dattributes.argtypes=[DWORD,DWORD,c_float,c_float,DWORD,DWORD,c_float]
 def Play(self, restart=False):
  result=self.__bass_channelplay(self._stream, restart)
  if self.__bass._Error: raise BassExceptionError(self.__bass._Error)
  return result
 def Pause(self):
  result=self.__bass_channelpause(self._stream)
  if self.__bass._Error: raise BassExceptionError(self.__bass._Error)
  return result
 def Stop(self):
  result=self.__bass_channelstop(self._stream)
  if self.__bass._Error: raise BassExceptionError(self.__bass._Error)
  return result
 def GetPosition(self,mode=BASS_POS_BYTE):
  result=self.__bass_channelgetposition(self._stream,mode)
  if self.__bass._Error: raise BassExceptionError(self.__bass._Error)
  return result
 def SetPosition(self, position,mode):
  result=self.__bass_channelsetposition(self._stream,position,mode)
  if self.__bass._Error: raise BassExceptionError(self.__bass._Error)
  return result
 def GetLength(self,mode):
  result=self.__bass_channelgetlength(self._stream,mode)
  if self.__bass._Error:raise BassExceptionError(self.__bass._Error)
  return result
 def Seconds2Bytes(self,seconds):
  result=self.__bass_channelseconds2bytes(self._stream,seconds)
  if self.__bass._Error: raise BassExceptionError(self.__bass._Error)
  return result
 def Bytes2Seconds(self,bytes):
  result=self.__bass_channelbytes2seconds(self._stream,bytes)
  if self.__bass._Error: raise BassExceptionError(self.__bass._Error)
  return result
 def Flags(self,flags,mask):
  result=self.__bass_channelflags(self._stream,flags,mode)
  if self.__bass._Error: raise BassExceptionError(self.__bass._Error)
  return result
 def Get3DAttributes(self):
  mode=DWORD(0)
  min=c_float(0)
  max=c_float(0)
  iangle=DWORD(0)
  oangle=DWORD(0)
  outvol=c_float(0)
  result=self.__bass_channelget3dattributes(self._stream,mode,min,max,iangle,oangle,outvol)
  if self.__bass._Error: raise BassExceptionError(self.__bass._Error)
  return {'mode':mode.value,'min':min.value,'max':max.value,'iangle':iangle.value,'oangle':oangle.value,'outvol':outvol.value}