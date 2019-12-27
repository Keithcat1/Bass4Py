from ..bass cimport (
                     _BASS_SYNC_SLIDE,
                     DWORD
                    )

from ..attribute cimport Attribute
from ..sync cimport Sync

cdef class Slide(Sync):
  def __cinit__(Slide self):

    self.__type = _BASS_SYNC_SLIDE
    self._set_mixtime(True)

  cpdef _call_callback(Slide self, DWORD data):
    self.__func(self, Attribute(self.Channel.__channel, data))
