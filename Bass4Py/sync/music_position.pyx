from ..bass cimport (
                     _BASS_SYNC_MUSICPOS,
                     DWORD,
                     HIWORD,
                     LOWORD,
                     MAKELONG
                    )

from ..basschannel cimport BASSCHANNEL
from ..bassmusic cimport BASSMUSIC
from ..basssync cimport BASSSYNC
from ..exceptions import BassAPIError, BassSyncError

cdef class BASSSYNC_MUSICPOSITION(BASSSYNC):
  def __cinit__(BASSSYNC_MUSICPOSITION self):

    self.__type = _BASS_SYNC_MUSICPOS

  cpdef Set(BASSSYNC_MUSICPOSITION self, BASSCHANNEL chan):
    if not isinstance(chan, BASSMUSIC):
      raise BassSyncError("this sync can only be set to a music")
    
    super(BASSSYNC_MUSICPOSITION, self).Set(chan)

  cpdef _call_callback(BASSSYNC_MUSICPOSITION self, DWORD data):
    self.__func(self, LOWORD(data), HIWORD(data))

  property Order:
    def __get__(BASSSYNC_MUSICPOSITION self):
      return LOWORD(self.__param)
    
    def __set__(BASSSYNC_MUSICPOSITION self, int value):

      if self.__sync:
        raise BassAPIError()
      
      if value < 0:
        value = -1
      
      self.__param = MAKELONG(value, HIWORD(self.__param))

  property Row:
    def __get__(BASSSYNC_MUSICPOSITION self):
      return HIWORD(self.__param)
    
    def __set__(BASSSYNC_MUSICPOSITION self, int value):

      if self.__sync:
        raise BassAPIError()
      
      if value < 0:
        value = -1
      
      self.__param = MAKELONG(LOWORD(self.__param), value)
