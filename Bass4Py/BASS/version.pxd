from .bass cimport DWORD,WORD

cdef class Version:
  cdef readonly DWORD Integer
  cdef readonly unicode String