from ..bass cimport (
                     _BASS_SYNC_DEV_FORMAT,
                     DWORD
                    )

from ..sync cimport Sync

cdef class DeviceFormat(Sync):
  def __cinit__(DeviceFormat self):

    self.__type = _BASS_SYNC_DEV_FORMAT
    self.__forcemixtime = True
    self.__mixtime = True
