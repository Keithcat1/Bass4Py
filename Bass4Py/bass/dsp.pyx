from libc.string cimport memmove

from .bass cimport __Evaluate
from ..bindings.bass cimport (
  BASS_ChannelSetDSP,
  BASS_ChannelRemoveDSP,
  DSPPROC)

from .channel cimport Channel
from ..exceptions import BassAPIError

cdef void CDSPPROC(HDSP dsp, DWORD channel, void *buffer, DWORD length, void *user) with gil:
  cdef DSP odsp = <DSP?>user
  cdef bytes result
  cdef char *cbuffer

  cbuffer=<char *>buffer
  result = odsp._func(odsp, <bytes>cbuffer[:length])

  if (<DWORD>len(result)) > length:
    result = result[:length]
  memmove(buffer, (<char *>result), length)

cdef void __stdcall CDSPPROC_STD(HDSP dsp, DWORD channel, void *buffer, DWORD length, void *user) with gil:
  CDSPPROC(dsp, channel, buffer, length, user)

cdef class DSP:

  cpdef Remove(DSP self):
    cdef bint res
    with nogil:
      res = BASS_ChannelRemoveDSP(self.Channel._channel, self._dsp)
    __Evaluate()
    return res

  cpdef Set(DSP self, Channel chan):
    cdef HDSP dsp
    cdef DSPPROC *cproc
    
    if self.__dsp:
      raise BassAPIError()

    IF UNAME_SYSNAME == "Windows":
      cproc = <DSPPROC*>CDSPPROC_STD
    ELSE:
      cproc = <DSPPROC*>CDSPPROC

    with nogil:
      dsp = BASS_ChannelSetDSP(chan._channel, cproc, <void*>self, self._priority)
    
    __Evaluate()
    
    self._dsp = dsp
    self.Channel = chan

  property Priority:
    def __get__(DSP self):
      return self._priority
    
    def __set__(DSP self, int priority):
      if self._dsp:
        raise BassAPIError()
        
      self._priority = priority

  property Callback:
    def __get__(DSP self):
      return self._func
    
    def __set__(DSP self, object value):
    
      if not callable(value):
        raise TypeError("value must be callable")
        
      if self._dsp:
        raise BassAPIError()
      
      self._func = value