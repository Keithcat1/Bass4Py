from ..bass cimport (
                     __Evaluate,
                     BASS_ChannelGetInfo,
                     BASS_CHANNELINFO,
                     BASS_DX8_PARAMEQ,
                     _BASS_FX_DX8_PARAMEQ,
                     BASS_FXGetParameters,
                     BASS_FXSetParameters,
                     DWORD,
                     HCHANNEL
                    )
from ..basschannel cimport BASSCHANNEL
from ..bassfx cimport (
                       BASSFX,
                       FUSED_CHANNEL
                      )

from libc.stdlib cimport malloc, free

cdef class BASSFX_DX8PARAMEQ(BASSFX):

  def __cinit__(BASSFX_DX8PARAMEQ self):
    cdef BASS_DX8_PARAMEQ *effect

    self.__type = _BASS_FX_DX8_PARAMEQ

    effect = <BASS_DX8_PARAMEQ*>malloc(sizeof(BASS_DX8_PARAMEQ))
    
    if effect == NULL:
      raise MemoryError()
      
    self.__effect = effect

    effect.fBandwidth = 12.0
    effect.fGain = 0.0

  def __dealloc__(BASSFX_DX8PARAMEQ self):
    if self.__effect != NULL:
      free(self.__effect)
      self.__effect = NULL

  cpdef Set(BASSFX_DX8PARAMEQ self, FUSED_CHANNEL chan):
    cdef BASS_DX8_PARAMEQ *effect = <BASS_DX8_PARAMEQ*>(self.__effect)
    cdef BASS_DX8_PARAMEQ temp

    super(BASSFX_DX8PARAMEQ, self).Set(chan, False)

    if effect.fCenter == 0:
      BASS_FXGetParameters(self.__fx, <void*>(&temp))
      effect.fCenter = temp.fCenter
    
    BASS_FXSetParameters(self.__fx, self.__effect)

    try:
      __Evaluate()
    except Exception, e:
      self.Remove()
      raise e

  property Center:
    def __get__(BASSFX_DX8PARAMEQ self):
      cdef BASS_DX8_PARAMEQ *effect = <BASS_DX8_PARAMEQ*>(self.__effect)
      return effect.fCenter

    def __set__(BASSFX_DX8PARAMEQ self, float value):
      cdef BASS_DX8_PARAMEQ *effect = <BASS_DX8_PARAMEQ*>(self.__effect)
      cdef BASS_CHANNELINFO info

      if self.__channel == 0:

        IF UNAME_SYSNAME == "Windows":
          self.__validate_range(value, 80.0, 16000.0)
        ELSE:
          self.__validate_range(value, 1.0, 20000.0)

      else:

        BASS_ChannelGetInfo(self.__channel, &info)

        __Evaluate()
        
        IF UNAME_SYSNAME == "Windows":
          self.__validate_range(value, 80.0, <float>(<int>(info.freq/3 - 1)))
        ELSE:
          self.__validate_range(value, 1.0, <float>(info.freq/2 - 1))

      effect.fCenter = value

  property Bandwidth:
    def __get__(BASSFX_DX8PARAMEQ self):
      cdef BASS_DX8_PARAMEQ *effect = <BASS_DX8_PARAMEQ*>(self.__effect)
      return effect.fBandwidth

    def __set__(BASSFX_DX8PARAMEQ self, float value):
      cdef BASS_DX8_PARAMEQ *effect = <BASS_DX8_PARAMEQ*>(self.__effect)
      self.__validate_range(value, 1.0, 36.0)
      effect.fBandwidth = value

  property Gain:
    def __get__(BASSFX_DX8PARAMEQ self):
      cdef BASS_DX8_PARAMEQ *effect = <BASS_DX8_PARAMEQ*>(self.__effect)
      return effect.fGain

    def __set__(BASSFX_DX8PARAMEQ self, float value):
      cdef BASS_DX8_PARAMEQ *effect = <BASS_DX8_PARAMEQ*>(self.__effect)
      self.__validate_range(value, -15.0, 15.0)
      effect.fGain = value
