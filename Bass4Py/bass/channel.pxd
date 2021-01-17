from ..bindings.bass cimport (
  HCHANNEL,
  BASS_CHANNELINFO,
  DWORD,
  QWORD,
  WORD,
  LOWORD,
  HIWORD,
  BASS_3DVECTOR)

from .attribute cimport Attribute
from .channel_base cimport ChannelBase
from .dsp cimport DSP
from .fx cimport FX
from .output_device cimport OutputDevice
from .sync cimport Sync

cdef class Channel(ChannelBase):
  cdef OutputDevice _device

  # attributes
  cdef readonly Attribute Buffer
  cdef readonly Attribute CPU
  cdef readonly Attribute Ramping
  cdef readonly Attribute EAXMix

  cdef DWORD _getflags(Channel self)
  cpdef _setflags(Channel self, DWORD flag, bint switch)
  cpdef GetTags(Channel self, DWORD tagtype)
  cpdef Link(Channel self, Channel obj)
  cpdef Play(Channel self, bint restart)
  cpdef ResetFX(Channel self)
  cpdef SetDSP(Channel self, DSP dsp)
  cpdef SetFX(Channel self, FX fx)
  cpdef SetPosition(Channel self, QWORD pos, DWORD mode=?)
  cpdef SetSync(Channel self, Sync sync)
  cpdef Unlink(Channel self, Channel obj)