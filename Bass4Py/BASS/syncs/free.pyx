from ..bass cimport (
                     _BASS_SYNC_FREE,
                     DWORD
                    )

from ..sync cimport Sync

cdef class Free(Sync):
  def __cinit__(Free self):

    self.__type = _BASS_SYNC_FREE
    self.__forcemixtime = True
    self.__mixtime = True
