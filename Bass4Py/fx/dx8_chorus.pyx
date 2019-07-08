from ..bass cimport (
                     BASS_DX8_CHORUS,
                     _BASS_DX8_PHASE_NEG_180,
                     _BASS_DX8_PHASE_90,
                     _BASS_DX8_PHASE_180,
                     _BASS_FX_DX8_CHORUS,
                     DWORD
                    )
from ..bassfx cimport BASSFX
from libc.stdlib cimport malloc, free

cdef class BASSFX_DX8CHORUS(BASSFX):

  def __cinit__(BASSFX_DX8CHORUS self):
    cdef BASS_DX8_CHORUS *effect

    self.__type = _BASS_FX_DX8_CHORUS

    effect = <BASS_DX8_CHORUS*>malloc(sizeof(BASS_DX8_CHORUS))
    
    if effect == NULL:
      raise MemoryError()
      
    self.__effect = effect

    effect.fWetDryMix = 50.0
    effect.fDepth = 10.0
    effect.fFeedback = 25.0
    effect.fFrequency = 1.1
    effect.lWaveform = 1
    effect.fDelay = 16.0
    effect.lPhase = _BASS_DX8_PHASE_90

  def __dealloc__(BASSFX_DX8CHORUS self):
    if self.__effect != NULL:
      free(self.__effect)
      self.__effect = NULL

  property WetDryMix:
    def __get__(BASSFX_DX8CHORUS self):
      cdef BASS_DX8_CHORUS *effect = <BASS_DX8_CHORUS*>(self.__effect)
      return effect.fWetDryMix

    def __set__(BASSFX_DX8CHORUS self, float value):
      cdef BASS_DX8_CHORUS *effect = <BASS_DX8_CHORUS*>(self.__effect)
      self.__validate_range(value, 0.0, 100.0)
      effect.fWetDryMix = value

  property Depth:
    def __get__(BASSFX_DX8CHORUS self):
      cdef BASS_DX8_CHORUS *effect = <BASS_DX8_CHORUS*>(self.__effect)
      return effect.fDepth

    def __set__(BASSFX_DX8CHORUS self, float value):
      cdef BASS_DX8_CHORUS *effect = <BASS_DX8_CHORUS*>(self.__effect)
      self.__validate_range(value, 0.0, 100.0)
      effect.fDepth = value

  property Feedback:
    def __get__(BASSFX_DX8CHORUS self):
      cdef BASS_DX8_CHORUS *effect = <BASS_DX8_CHORUS*>(self.__effect)
      return effect.fFeedback

    def __set__(BASSFX_DX8CHORUS self, float value):
      cdef BASS_DX8_CHORUS *effect = <BASS_DX8_CHORUS*>(self.__effect)
      self.__validate_range(value, -99.0, 99.0)
      effect.fFeedback = value

  property Frequency:
    def __get__(BASSFX_DX8CHORUS self):
      cdef BASS_DX8_CHORUS *effect = <BASS_DX8_CHORUS*>(self.__effect)
      return effect.fFrequency

    def __set__(BASSFX_DX8CHORUS self, float value):
      cdef BASS_DX8_CHORUS *effect = <BASS_DX8_CHORUS*>(self.__effect)
      self.__validate_range(value, 0.0, 10.0)
      effect.fFrequency = value

  property Waveform:
    def __get__(BASSFX_DX8CHORUS self):
      cdef BASS_DX8_CHORUS *effect = <BASS_DX8_CHORUS*>(self.__effect)
      return effect.lWaveform

    def __set__(BASSFX_DX8CHORUS self, DWORD value):
      cdef BASS_DX8_CHORUS *effect = <BASS_DX8_CHORUS*>(self.__effect)
      self.__validate_range(value, 0, 1)
      effect.lWaveform = value

  property Delay:
    def __get__(BASSFX_DX8CHORUS self):
      cdef BASS_DX8_CHORUS *effect = <BASS_DX8_CHORUS*>(self.__effect)
      return effect.fDelay

    def __set__(BASSFX_DX8CHORUS self, float value):
      cdef BASS_DX8_CHORUS *effect = <BASS_DX8_CHORUS*>(self.__effect)
      self.__validate_range(value, 0, 20)
      effect.fDelay = value

  property Phase:
    def __get__(BASSFX_DX8CHORUS self):
      cdef BASS_DX8_CHORUS *effect = <BASS_DX8_CHORUS*>(self.__effect)
      return effect.lPhase

    def __set__(BASSFX_DX8CHORUS self, DWORD value):
      cdef BASS_DX8_CHORUS *effect = <BASS_DX8_CHORUS*>(self.__effect)
      self.__validate_range(value, _BASS_DX8_PHASE_NEG_180, _BASS_DX8_PHASE_180)
      effect.lPhase = value
