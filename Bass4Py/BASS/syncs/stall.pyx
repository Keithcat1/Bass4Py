from ..bass cimport (
                     _BASS_SYNC_STALL,
                     DWORD
                    )

from ..sync cimport Sync

cdef class Stall(Sync):
  def __cinit__(Stall self):

    self.__type = _BASS_SYNC_STALL
    self.__forcemixtime = True
    self.__mixtime = True

  cpdef _call_callback(Stall self, DWORD data):
    self.__func(self, bool(data))
