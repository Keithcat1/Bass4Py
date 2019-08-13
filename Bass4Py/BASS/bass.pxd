cpdef enum:
  EAX_ENVIRONMENT_GENERIC
  EAX_ENVIRONMENT_PADDEDCELL
  EAX_ENVIRONMENT_ROOM
  EAX_ENVIRONMENT_BATHROOM
  EAX_ENVIRONMENT_LIVINGROOM
  EAX_ENVIRONMENT_STONEROOM
  EAX_ENVIRONMENT_AUDITORIUM
  EAX_ENVIRONMENT_CONCERTHALL
  EAX_ENVIRONMENT_CAVE
  EAX_ENVIRONMENT_ARENA
  EAX_ENVIRONMENT_HANGAR
  EAX_ENVIRONMENT_CARPETEDHALLWAY
  EAX_ENVIRONMENT_HALLWAY
  EAX_ENVIRONMENT_STONECORRIDOR
  EAX_ENVIRONMENT_ALLEY
  EAX_ENVIRONMENT_FOREST
  EAX_ENVIRONMENT_CITY
  EAX_ENVIRONMENT_MOUNTAINS
  EAX_ENVIRONMENT_QUARRY
  EAX_ENVIRONMENT_PLAIN
  EAX_ENVIRONMENT_PARKINGLOT
  EAX_ENVIRONMENT_SEWERPIPE
  EAX_ENVIRONMENT_UNDERWATER
  EAX_ENVIRONMENT_DRUGGED
  EAX_ENVIRONMENT_DIZZY
  EAX_ENVIRONMENT_PSYCHOTIC
  EAX_ENVIRONMENT_COUNT

cpdef enum:
  EAX_PRESET_GENERIC
  EAX_PRESET_PADDEDCELL
  EAX_PRESET_ROOM
  EAX_PRESET_BATHROOM
  EAX_PRESET_LIVINGROOM
  EAX_PRESET_STONEROOM
  EAX_PRESET_AUDITORIUM
  EAX_PRESET_CONCERTHALL
  EAX_PRESET_CAVE
  EAX_PRESET_ARENA
  EAX_PRESET_HANGAR
  EAX_PRESET_CARPETEDHALLWAY
  EAX_PRESET_HALLWAY
  EAX_PRESET_STONECORRIDOR
  EAX_PRESET_ALLEY
  EAX_PRESET_FOREST
  EAX_PRESET_CITY
  EAX_PRESET_MOUNTAINS
  EAX_PRESET_QUARRY
  EAX_PRESET_PLAIN
  EAX_PRESET_PARKINGLOT
  EAX_PRESET_SEWERPIPE
  EAX_PRESET_UNDERWATER
  EAX_PRESET_DRUGGED
  EAX_PRESET_DIZZY
  EAX_PRESET_PSYCHOTIC

cdef extern from "bass.h" nogil:
  ctypedef unsigned long DWORD
  ctypedef void* HWND
  ctypedef unsigned long long QWORD
  ctypedef short BYTE
  ctypedef unsigned int WORD
  ctypedef DWORD HMUSIC
  ctypedef DWORD HSAMPLE
  ctypedef DWORD HCHANNEL
  ctypedef DWORD HSTREAM
  ctypedef DWORD HRECORD
  ctypedef DWORD HSYNC
  ctypedef DWORD HDSP
  ctypedef DWORD HFX
  ctypedef DWORD HPLUGIN

  # constants
  cdef int _BASS_OK "BASS_OK"
  cdef int _BASS_ERROR_MEM "BASS_ERROR_MEM"
  cdef int _BASS_ERROR_FILEOPEN "BASS_ERROR_FILEOPEN"
  cdef int _BASS_ERROR_DRIVER "BASS_ERROR_DRIVER"
  cdef int _BASS_ERROR_BUFLOST "BASS_ERROR_BUFLOST"
  cdef int _BASS_ERROR_HANDLE "BASS_ERROR_HANDLE"
  cdef int _BASS_ERROR_FORMAT "BASS_ERROR_FORMAT"
  cdef int _BASS_ERROR_POSITION "BASS_ERROR_POSITION"
  cdef int _BASS_ERROR_INIT "BASS_ERROR_INIT"
  cdef int _BASS_ERROR_START "BASS_ERROR_START"
  cdef int _BASS_ERROR_SSL "BASS_ERROR_SSL"
  cdef int _BASS_ERROR_ALREADY "BASS_ERROR_ALREADY"
  cdef int _BASS_ERROR_NOCHAN "BASS_ERROR_NOCHAN"
  cdef int _BASS_ERROR_ILLTYPE "BASS_ERROR_ILLTYPE"
  cdef int _BASS_ERROR_ILLPARAM "BASS_ERROR_ILLPARAM"
  cdef int _BASS_ERROR_NO3D "BASS_ERROR_NO3D"
  cdef int _BASS_ERROR_NOEAX "BASS_ERROR_NOEAX"
  cdef int _BASS_ERROR_DEVICE "BASS_ERROR_DEVICE"
  cdef int _BASS_ERROR_NOPLAY "BASS_ERROR_NOPLAY"
  cdef int _BASS_ERROR_FREQ "BASS_ERROR_FREQ"
  cdef int _BASS_ERROR_NOTFILE "BASS_ERROR_NOTFILE"
  cdef int _BASS_ERROR_NOHW "BASS_ERROR_NOHW"
  cdef int _BASS_ERROR_EMPTY "BASS_ERROR_EMPTY"
  cdef int _BASS_ERROR_NONET "BASS_ERROR_NONET"
  cdef int _BASS_ERROR_CREATE "BASS_ERROR_CREATE"
  cdef int _BASS_ERROR_NOFX "BASS_ERROR_NOFX"
  cdef int _BASS_ERROR_NOTAVAIL "BASS_ERROR_NOTAVAIL"
  cdef int _BASS_ERROR_DECODE "BASS_ERROR_DECODE"
  cdef int _BASS_ERROR_DX "BASS_ERROR_DX"
  cdef int _BASS_ERROR_TIMEOUT "BASS_ERROR_TIMEOUT"
  cdef int _BASS_ERROR_FILEFORM "BASS_ERROR_FILEFORM"
  cdef int _BASS_ERROR_SPEAKER "BASS_ERROR_SPEAKER"
  cdef int _BASS_ERROR_VERSION "BASS_ERROR_VERSION"
  cdef int _BASS_ERROR_CODEC "BASS_ERROR_CODEC"
  cdef int _BASS_ERROR_ENDED "BASS_ERROR_ENDED"
  cdef int _BASS_ERROR_BUSY "BASS_ERROR_BUSY"
  cdef int _BASS_ERROR_UNKNOWN "BASS_ERROR_UNKNOWN"

  cdef DWORD _BASS_CONFIG_BUFFER "BASS_CONFIG_BUFFER"
  cdef DWORD _BASS_CONFIG_UPDATEPERIOD "BASS_CONFIG_UPDATEPERIOD"
  cdef DWORD _BASS_CONFIG_GVOL_SAMPLE "BASS_CONFIG_GVOL_SAMPLE"
  cdef DWORD _BASS_CONFIG_GVOL_STREAM "BASS_CONFIG_GVOL_STREAM"
  cdef DWORD _BASS_CONFIG_GVOL_MUSIC "BASS_CONFIG_GVOL_MUSIC"
  cdef DWORD _BASS_CONFIG_CURVE_VOL "BASS_CONFIG_CURVE_VOL"
  cdef DWORD _BASS_CONFIG_CURVE_PAN "BASS_CONFIG_CURVE_PAN"
  cdef DWORD _BASS_CONFIG_FLOATDSP "BASS_CONFIG_FLOATDSP"
  cdef DWORD _BASS_CONFIG_3DALGORITHM "BASS_CONFIG_3DALGORITHM"
  cdef DWORD _BASS_CONFIG_NET_TIMEOUT "BASS_CONFIG_NET_TIMEOUT"
  cdef DWORD _BASS_CONFIG_NET_BUFFER "BASS_CONFIG_NET_BUFFER"
  cdef DWORD _BASS_CONFIG_PAUSE_NOPLAY "BASS_CONFIG_PAUSE_NOPLAY"
  cdef DWORD _BASS_CONFIG_NET_PREBUF "BASS_CONFIG_NET_PREBUF"
  cdef DWORD _BASS_CONFIG_NET_PASSIVE "BASS_CONFIG_NET_PASSIVE"
  cdef DWORD _BASS_CONFIG_REC_BUFFER "BASS_CONFIG_REC_BUFFER"
  cdef DWORD _BASS_CONFIG_NET_PLAYLIST "BASS_CONFIG_NET_PLAYLIST"
  cdef DWORD _BASS_CONFIG_NET_PLAYLIST_DEPTH "BASS_CONFIG_NET_PLAYLIST_DEPTH"
  cdef DWORD _BASS_CONFIG_MUSIC_VIRTUAL "BASS_CONFIG_MUSIC_VIRTUAL"
  cdef DWORD _BASS_CONFIG_VERIFY "BASS_CONFIG_VERIFY"
  cdef DWORD _BASS_CONFIG_UPDATETHREADS "BASS_CONFIG_UPDATETHREADS"
  cdef DWORD _BASS_CONFIG_DEV_BUFFER "BASS_CONFIG_DEV_BUFFER"
  cdef DWORD _BASS_CONFIG_VISTA_TRUEPOS "BASS_CONFIG_VISTA_TRUEPOS"
  cdef DWORD _BASS_CONFIG_IOS_MIXAUDIO "BASS_CONFIG_IOS_MIXAUDIO"
  cdef DWORD _BASS_CONFIG_DEV_DEFAULT "BASS_CONFIG_DEV_DEFAULT"
  cdef DWORD _BASS_CONFIG_NET_READTIMEOUT "BASS_CONFIG_NET_READTIMEOUT"
  cdef DWORD _BASS_CONFIG_VISTA_SPEAKERS "BASS_CONFIG_VISTA_SPEAKERS"
  cdef DWORD _BASS_CONFIG_IOS_SPEAKER "BASS_CONFIG_IOS_SPEAKER"
  cdef DWORD _BASS_CONFIG_MF_DISABLE "BASS_CONFIG_MF_DISABLE"
  cdef DWORD _BASS_CONFIG_HANDLES "BASS_CONFIG_HANDLES"
  cdef DWORD _BASS_CONFIG_UNICODE "BASS_CONFIG_UNICODE"
  cdef DWORD _BASS_CONFIG_SRC "BASS_CONFIG_SRC"
  cdef DWORD _BASS_CONFIG_SRC_SAMPLE "BASS_CONFIG_SRC_SAMPLE"
  cdef DWORD _BASS_CONFIG_ASYNCFILE_BUFFER "BASS_CONFIG_ASYNCFILE_BUFFER"
  cdef DWORD _BASS_CONFIG_OGG_PRESCAN "BASS_CONFIG_OGG_PRESCAN"
  cdef DWORD _BASS_CONFIG_MF_VIDEO "BASS_CONFIG_MF_VIDEO"
  cdef DWORD _BASS_CONFIG_AIRPLAY "BASS_CONFIG_AIRPLAY"
  cdef DWORD _BASS_CONFIG_DEV_NONSTOP "BASS_CONFIG_DEV_NONSTOP"
  cdef DWORD _BASS_CONFIG_IOS_NOCATEGORY "BASS_CONFIG_IOS_NOCATEGORY"
  cdef DWORD _BASS_CONFIG_VERIFY_NET "BASS_CONFIG_VERIFY_NET"
  cdef DWORD _BASS_CONFIG_DEV_PERIOD "BASS_CONFIG_DEV_PERIOD"
  cdef DWORD _BASS_CONFIG_NET_PREBUF_WAIT "BASS_CONFIG_NET_PREBUF_WAIT"
  cdef DWORD _BASS_CONFIG_WASAPI_PERSIST "BASS_CONFIG_WASAPI_PERSIST"

  cdef DWORD _BASS_CONFIG_NET_AGENT "BASS_CONFIG_NET_AGENT"
  cdef DWORD _BASS_CONFIG_NET_PROXY "BASS_CONFIG_NET_PROXY"
  cdef DWORD _BASS_CONFIG_IOS_NOTIFY "BASS_CONFIG_IOS_NOTIFY"
  cdef DWORD _BASS_CONFIG_LIBSSL "BASS_CONFIG_LIBSSL"

  cdef DWORD _BASS_DEVICE_8BITS "BASS_DEVICE_8BITS"
  cdef DWORD _BASS_DEVICE_MONO "BASS_DEVICE_MONO"
  cdef DWORD _BASS_DEVICE_STEREO "BASS_DEVICE_STEREO"
  cdef DWORD _BASS_DEVICE_3D "BASS_DEVICE_3D"
  cdef DWORD _BASS_DEVICE_LATENCY "BASS_DEVICE_LATENCY"
  cdef DWORD _BASS_DEVICE_CPSPEAKERS "BASS_DEVICE_CPSPEAKERS"
  cdef DWORD _BASS_DEVICE_SPEAKERS "BASS_DEVICE_SPEAKERS"
  cdef DWORD _BASS_DEVICE_NOSPEAKER "BASS_DEVICE_NOSPEAKER"
  cdef DWORD _BASS_DEVICE_DMIX "BASS_DEVICE_DMIX"
  cdef DWORD _BASS_DEVICE_FREQ "BASS_DEVICE_FREQ"
  cdef DWORD _BASS_DEVICE_DSOUND "BASS_DEVICE_DSOUND"

  cdef DWORD _BASS_DEVICE_ENABLED "BASS_DEVICE_ENABLED"
  cdef DWORD _BASS_DEVICE_DEFAULT "BASS_DEVICE_DEFAULT"
  cdef DWORD _BASS_DEVICE_INIT "BASS_DEVICE_INIT"
  cdef DWORD _BASS_DEVICE_LOOPBACK "BASS_DEVICE_LOOPBACK"
  cdef DWORD _BASS_DEVICE_TYPE_MASK "BASS_DEVICE_TYPE_MASK"
  cdef DWORD _BASS_DEVICE_TYPE_NETWORK "BASS_DEVICE_TYPE_NETWORK"
  cdef DWORD _BASS_DEVICE_TYPE_SPEAKERS "BASS_DEVICE_TYPE_SPEAKERS"
  cdef DWORD _BASS_DEVICE_TYPE_LINE "BASS_DEVICE_TYPE_LINE"
  cdef DWORD _BASS_DEVICE_TYPE_HEADPHONES "BASS_DEVICE_TYPE_HEADPHONES"
  cdef DWORD _BASS_DEVICE_TYPE_MICROPHONE "BASS_DEVICE_TYPE_MICROPHONE"
  cdef DWORD _BASS_DEVICE_TYPE_HEADSET "BASS_DEVICE_TYPE_HEADSET"
  cdef DWORD _BASS_DEVICE_TYPE_HANDSET "BASS_DEVICE_TYPE_HANDSET"
  cdef DWORD _BASS_DEVICE_TYPE_DIGITAL "BASS_DEVICE_TYPE_DIGITAL"
  cdef DWORD _BASS_DEVICE_TYPE_SPDIF "BASS_DEVICE_TYPE_SPDIF"
  cdef DWORD _BASS_DEVICE_TYPE_HDMI "BASS_DEVICE_TYPE_HDMI"
  cdef DWORD _BASS_DEVICE_TYPE_DISPLAYPORT "BASS_DEVICE_TYPE_DISPLAYPORT"
  cdef DWORD _BASS_DEVICES_AIRPLAY "BASS_DEVICES_AIRPLAY"

  cdef DWORD _BASS_OBJECT_DS "BASS_OBJECT_DS"
  cdef DWORD _BASS_OBJECT_DS3DL "BASS_OBJECT_DS3DL"

  cdef DWORD _DSCAPS_CONTINUOUSRATE "DSCAPS_CONTINUOUSRATE"
  cdef DWORD _DSCAPS_EMULDRIVER "DSCAPS_EMULDRIVER"
  cdef DWORD _DSCAPS_CERTIFIED "DSCAPS_CERTIFIED"
  cdef DWORD _DSCAPS_SECONDARYMONO "DSCAPS_SECONDARYMONO"
  cdef DWORD _DSCAPS_SECONDARYSTEREO "DSCAPS_SECONDARYSTEREO"
  cdef DWORD _DSCAPS_SECONDARY8BIT "DSCAPS_SECONDARY8BIT"
  cdef DWORD _DSCAPS_SECONDARY16BIT "DSCAPS_SECONDARY16BIT"

  cdef DWORD _DSCCAPS_EMULDRIVER "DSCCAPS_EMULDRIVER"
  cdef DWORD _DSCCAPS_CERTIFIED "DSCCAPS_CERTIFIED"

  cdef DWORD _WAVE_FORMAT_1M08 "WAVE_FORMAT_1M08"
  cdef DWORD _WAVE_FORMAT_1S08 "WAVE_FORMAT_1S08"
  cdef DWORD _WAVE_FORMAT_1M16 "WAVE_FORMAT_1M16"
  cdef DWORD _WAVE_FORMAT_1S16 "WAVE_FORMAT_1S16"
  cdef DWORD _WAVE_FORMAT_2M08 "WAVE_FORMAT_2M08"
  cdef DWORD _WAVE_FORMAT_2S08 "WAVE_FORMAT_2S08"
  cdef DWORD _WAVE_FORMAT_2M16 "WAVE_FORMAT_2M16"
  cdef DWORD _WAVE_FORMAT_2S16 "WAVE_FORMAT_2S16"
  cdef DWORD _WAVE_FORMAT_4M08 "WAVE_FORMAT_4M08"
  cdef DWORD _WAVE_FORMAT_4S08 "WAVE_FORMAT_4S08"
  cdef DWORD _WAVE_FORMAT_4M16 "WAVE_FORMAT_4M16"
  cdef DWORD _WAVE_FORMAT_4S16 "WAVE_FORMAT_4S16"

  cdef DWORD _BASS_SAMPLE_8BITS "BASS_SAMPLE_8BITS"
  cdef DWORD _BASS_SAMPLE_FLOAT "BASS_SAMPLE_FLOAT"
  cdef DWORD _BASS_SAMPLE_MONO "BASS_SAMPLE_MONO"
  cdef DWORD _BASS_SAMPLE_LOOP "BASS_SAMPLE_LOOP"
  cdef DWORD _BASS_SAMPLE_3D "BASS_SAMPLE_3D"
  cdef DWORD _BASS_SAMPLE_SOFTWARE "BASS_SAMPLE_SOFTWARE"
  cdef DWORD _BASS_SAMPLE_MUTEMAX "BASS_SAMPLE_MUTEMAX"
  cdef DWORD _BASS_SAMPLE_VAM "BASS_SAMPLE_VAM"
  cdef DWORD _BASS_SAMPLE_FX "BASS_SAMPLE_FX"
  cdef DWORD _BASS_SAMPLE_OVER_VOL "BASS_SAMPLE_OVER_VOL"
  cdef DWORD _BASS_SAMPLE_OVER_POS "BASS_SAMPLE_OVER_POS"
  cdef DWORD _BASS_SAMPLE_OVER_DIST "BASS_SAMPLE_OVER_DIST"

  cdef DWORD _BASS_STREAM_PRESCAN "BASS_STREAM_PRESCAN"
  cdef DWORD _BASS_MP3_SETPOS "BASS_MP3_SETPOS"
  cdef DWORD _BASS_STREAM_AUTOFREE "BASS_STREAM_AUTOFREE"
  cdef DWORD _BASS_STREAM_RESTRATE "BASS_STREAM_RESTRATE"
  cdef DWORD _BASS_STREAM_BLOCK "BASS_STREAM_BLOCK"
  cdef DWORD _BASS_STREAM_DECODE "BASS_STREAM_DECODE"
  cdef DWORD _BASS_STREAM_STATUS "BASS_STREAM_STATUS"

  cdef DWORD _BASS_MUSIC_FLOAT "BASS_MUSIC_FLOAT"
  cdef DWORD _BASS_MUSIC_MONO "BASS_MUSIC_MONO"
  cdef DWORD _BASS_MUSIC_LOOP "BASS_MUSIC_LOOP"
  cdef DWORD _BASS_MUSIC_3D "BASS_MUSIC_3D"
  cdef DWORD _BASS_MUSIC_FX "BASS_MUSIC_FX"
  cdef DWORD _BASS_MUSIC_AUTOFREE "BASS_MUSIC_AUTOFREE"
  cdef DWORD _BASS_MUSIC_DECODE "BASS_MUSIC_DECODE"
  cdef DWORD _BASS_MUSIC_PRESCAN "BASS_MUSIC_PRESCAN"
  cdef DWORD _BASS_MUSIC_CALCLEN "BASS_MUSIC_CALCLEN"
  cdef DWORD _BASS_MUSIC_RAMP "BASS_MUSIC_RAMP"
  cdef DWORD _BASS_MUSIC_RAMPS "BASS_MUSIC_RAMPS"
  cdef DWORD _BASS_MUSIC_SURROUND "BASS_MUSIC_SURROUND"
  cdef DWORD _BASS_MUSIC_SURROUND2 "BASS_MUSIC_SURROUND2"
  cdef DWORD _BASS_MUSIC_FT2MOD "BASS_MUSIC_FT2MOD"
  cdef DWORD _BASS_MUSIC_PT1MOD "BASS_MUSIC_PT1MOD"
  cdef DWORD _BASS_MUSIC_NONINTER "BASS_MUSIC_NONINTER"
  cdef DWORD _BASS_MUSIC_SINCINTER "BASS_MUSIC_SINCINTER"
  cdef DWORD _BASS_MUSIC_POSRESET "BASS_MUSIC_POSRESET"
  cdef DWORD _BASS_MUSIC_POSRESETEX "BASS_MUSIC_POSRESETEX"
  cdef DWORD _BASS_MUSIC_STOPBACK "BASS_MUSIC_STOPBACK"
  cdef DWORD _BASS_MUSIC_NOSAMPLE "BASS_MUSIC_NOSAMPLE"

  cdef DWORD _BASS_ASYNCFILE "BASS_ASYNCFILE"
  cdef DWORD _BASS_UNICODE "BASS_UNICODE"

  cdef DWORD _BASS_SPEAKER_FRONT "BASS_SPEAKER_FRONT"
  cdef DWORD _BASS_SPEAKER_REAR "BASS_SPEAKER_REAR"
  cdef DWORD _BASS_SPEAKER_CENLFE "BASS_SPEAKER_CENLFE"
  cdef DWORD _BASS_SPEAKER_REAR2 "BASS_SPEAKER_REAR2"
  cdef DWORD _BASS_SPEAKER_LEFT "BASS_SPEAKER_LEFT"
  cdef DWORD _BASS_SPEAKER_RIGHT "BASS_SPEAKER_RIGHT"
  cdef DWORD _BASS_SPEAKER_FRONTLEFT "BASS_SPEAKER_FRONTLEFT"
  cdef DWORD _BASS_SPEAKER_FRONTRIGHT "BASS_SPEAKER_FRONTRIGHT"
  cdef DWORD _BASS_SPEAKER_REARLEFT "BASS_SPEAKER_REARLEFT"
  cdef DWORD _BASS_SPEAKER_REARRIGHT "BASS_SPEAKER_REARRIGHT"
  cdef DWORD _BASS_SPEAKER_CENTER "BASS_SPEAKER_CENTER"
  cdef DWORD _BASS_SPEAKER_LFE "BASS_SPEAKER_LFE"
  cdef DWORD _BASS_SPEAKER_REAR2LEFT "BASS_SPEAKER_REAR2LEFT"
  cdef DWORD _BASS_SPEAKER_REAR2RIGHT "BASS_SPEAKER_REAR2RIGHT"

  cdef DWORD _BASS_RECORD_PAUSE "BASS_RECORD_PAUSE"
  cdef DWORD _BASS_RECORD_ECHOCANCEL "BASS_RECORD_ECHOCANCEL"
  cdef DWORD _BASS_RECORD_AGC "BASS_RECORD_AGC"

  cdef DWORD _BASS_VAM_HARDWARE "BASS_VAM_HARDWARE"
  cdef DWORD _BASS_VAM_SOFTWARE "BASS_VAM_SOFTWARE"
  cdef DWORD _BASS_VAM_TERM_TIME "BASS_VAM_TERM_TIME"
  cdef DWORD _BASS_VAM_TERM_DIST "BASS_VAM_TERM_DIST"
  cdef DWORD _BASS_VAM_TERM_PRIO "BASS_VAM_TERM_PRIO"

  cdef DWORD _BASS_CTYPE_SAMPLE "BASS_CTYPE_SAMPLE"
  cdef DWORD _BASS_CTYPE_RECORD "BASS_CTYPE_RECORD"
  cdef DWORD _BASS_CTYPE_STREAM "BASS_CTYPE_STREAM"
  cdef DWORD _BASS_CTYPE_STREAM_OGG "BASS_CTYPE_STREAM_OGG"
  cdef DWORD _BASS_CTYPE_STREAM_MP1 "BASS_CTYPE_STREAM_MP1"
  cdef DWORD _BASS_CTYPE_STREAM_MP2 "BASS_CTYPE_STREAM_MP2"
  cdef DWORD _BASS_CTYPE_STREAM_MP3 "BASS_CTYPE_STREAM_MP3"
  cdef DWORD _BASS_CTYPE_STREAM_AIFF "BASS_CTYPE_STREAM_AIFF"
  cdef DWORD _BASS_CTYPE_STREAM_CA "BASS_CTYPE_STREAM_CA"
  cdef DWORD _BASS_CTYPE_STREAM_MF "BASS_CTYPE_STREAM_MF"
  cdef DWORD _BASS_CTYPE_STREAM_WAV "BASS_CTYPE_STREAM_WAV"
  cdef DWORD _BASS_CTYPE_STREAM_WAV_PCM "BASS_CTYPE_STREAM_WAV_PCM"
  cdef DWORD _BASS_CTYPE_STREAM_WAV_FLOAT "BASS_CTYPE_STREAM_WAV_FLOAT"
  cdef DWORD _BASS_CTYPE_MUSIC_MOD "BASS_CTYPE_MUSIC_MOD"
  cdef DWORD _BASS_CTYPE_MUSIC_MTM "BASS_CTYPE_MUSIC_MTM"
  cdef DWORD _BASS_CTYPE_MUSIC_S3M "BASS_CTYPE_MUSIC_S3M"
  cdef DWORD _BASS_CTYPE_MUSIC_XM "BASS_CTYPE_MUSIC_XM"
  cdef DWORD _BASS_CTYPE_MUSIC_IT "BASS_CTYPE_MUSIC_IT"
  cdef DWORD _BASS_CTYPE_MUSIC_MO3 "BASS_CTYPE_MUSIC_MO3"

  cdef DWORD _BASS_3DMODE_NORMAL "BASS_3DMODE_NORMAL"
  cdef DWORD _BASS_3DMODE_RELATIVE "BASS_3DMODE_RELATIVE"
  cdef DWORD _BASS_3DMODE_OFF "BASS_3DMODE_OFF"

  cdef DWORD _BASS_3DALG_DEFAULT "BASS_3DALG_DEFAULT"
  cdef DWORD _BASS_3DALG_OFF "BASS_3DALG_OFF"
  cdef DWORD _BASS_3DALG_FULL "BASS_3DALG_FULL"
  cdef DWORD _BASS_3DALG_LIGHT "BASS_3DALG_LIGHT"

  cdef int _STREAMPROC_DEVICE "STREAMPROC_DEVICE"
  cdef int _STREAMPROC_DEVICE_3D "STREAMPROC_DEVICE_3D"
  cdef int _STREAMPROC_DUMMY "STREAMPROC_DUMMY"
  cdef int _STREAMPROC_PUSH "STREAMPROC_PUSH"

  cdef int _STREAMFILE_NOBUFFER "STREAMFILE_NOBUFFER"
  cdef int _STREAMFILE_BUFFER "STREAMFILE_BUFFER"
  cdef int _STREAMFILE_BUFFERPUSH "STREAMFILE_BUFFERPUSH"

  cdef int _BASS_FILEDATA_END "BASS_FILEDATA_END"

  cdef DWORD _BASS_FILEPOS_CURRENT "BASS_FILEPOS_CURRENT"
  cdef DWORD _BASS_FILEPOS_DECODE "BASS_FILEPOS_DECODE"
  cdef DWORD _BASS_FILEPOS_DOWNLOAD "BASS_FILEPOS_DOWNLOAD"
  cdef DWORD _BASS_FILEPOS_END "BASS_FILEPOS_END"
  cdef DWORD _BASS_FILEPOS_START "BASS_FILEPOS_START"
  cdef DWORD _BASS_FILEPOS_CONNECTED "BASS_FILEPOS_CONNECTED"
  cdef DWORD _BASS_FILEPOS_BUFFER "BASS_FILEPOS_BUFFER"
  cdef DWORD _BASS_FILEPOS_SOCKET "BASS_FILEPOS_SOCKET"
  cdef DWORD _BASS_FILEPOS_ASYNCBUF "BASS_FILEPOS_ASYNCBUF"
  cdef DWORD _BASS_FILEPOS_SIZE "BASS_FILEPOS_SIZE"

  cdef DWORD _BASS_SYNC_POS "BASS_SYNC_POS"
  cdef DWORD _BASS_SYNC_END "BASS_SYNC_END"
  cdef DWORD _BASS_SYNC_META "BASS_SYNC_META"
  cdef DWORD _BASS_SYNC_SLIDE "BASS_SYNC_SLIDE"
  cdef DWORD _BASS_SYNC_STALL "BASS_SYNC_STALL"
  cdef DWORD _BASS_SYNC_DOWNLOAD "BASS_SYNC_DOWNLOAD"
  cdef DWORD _BASS_SYNC_FREE "BASS_SYNC_FREE"
  cdef DWORD _BASS_SYNC_SETPOS "BASS_SYNC_SETPOS"
  cdef DWORD _BASS_SYNC_MUSICPOS "BASS_SYNC_MUSICPOS"
  cdef DWORD _BASS_SYNC_MUSICINST "BASS_SYNC_MUSICINST"
  cdef DWORD _BASS_SYNC_MUSICFX "BASS_SYNC_MUSICFX"
  cdef DWORD _BASS_SYNC_OGG_CHANGE "BASS_SYNC_OGG_CHANGE"
  cdef DWORD _BASS_SYNC_DEV_FORMAT "BASS_SYNC_DEV_FORMAT"
  cdef DWORD _BASS_SYNC_DEV_FAIL "BASS_SYNC_DEV_FAIL"
  cdef DWORD _BASS_SYNC_MIXTIME "BASS_SYNC_MIXTIME"
  cdef DWORD _BASS_SYNC_ONETIME "BASS_SYNC_ONETIME"

  cdef DWORD _BASS_ACTIVE_STOPPED "BASS_ACTIVE_STOPPED"
  cdef DWORD _BASS_ACTIVE_PLAYING "BASS_ACTIVE_PLAYING"
  cdef DWORD _BASS_ACTIVE_STALLED "BASS_ACTIVE_STALLED"
  cdef DWORD _BASS_ACTIVE_PAUSED "BASS_ACTIVE_PAUSED"
  cdef DWORD _BASS_ACTIVE_PAUSED_DEVICE "BASS_ACTIVE_PAUSED_DEVICE"

  cdef DWORD _BASS_ATTRIB_FREQ "BASS_ATTRIB_FREQ"
  cdef DWORD _BASS_ATTRIB_VOL "BASS_ATTRIB_VOL"
  cdef DWORD _BASS_ATTRIB_PAN "BASS_ATTRIB_PAN"
  cdef DWORD _BASS_ATTRIB_EAXMIX "BASS_ATTRIB_EAXMIX"
  cdef DWORD _BASS_ATTRIB_NOBUFFER "BASS_ATTRIB_NOBUFFER"
  cdef DWORD _BASS_ATTRIB_VBR "BASS_ATTRIB_VBR"
  cdef DWORD _BASS_ATTRIB_CPU "BASS_ATTRIB_CPU"
  cdef DWORD _BASS_ATTRIB_SRC "BASS_ATTRIB_SRC"
  cdef DWORD _BASS_ATTRIB_NET_RESUME "BASS_ATTRIB_NET_RESUME"
  cdef DWORD _BASS_ATTRIB_SCANINFO "BASS_ATTRIB_SCANINFO"
  cdef DWORD _BASS_ATTRIB_NORAMP "BASS_ATTRIB_NORAMP"
  cdef DWORD _BASS_ATTRIB_BITRATE "BASS_ATTRIB_BITRATE"
  cdef DWORD _BASS_ATTRIB_BUFFER "BASS_ATTRIB_BUFFER"
  cdef DWORD _BASS_ATTRIB_MUSIC_AMPLIFY "BASS_ATTRIB_MUSIC_AMPLIFY"
  cdef DWORD _BASS_ATTRIB_MUSIC_PANSEP "BASS_ATTRIB_MUSIC_PANSEP"
  cdef DWORD _BASS_ATTRIB_MUSIC_PSCALER "BASS_ATTRIB_MUSIC_PSCALER"
  cdef DWORD _BASS_ATTRIB_MUSIC_BPM "BASS_ATTRIB_MUSIC_BPM"
  cdef DWORD _BASS_ATTRIB_MUSIC_SPEED "BASS_ATTRIB_MUSIC_SPEED"
  cdef DWORD _BASS_ATTRIB_MUSIC_VOL_GLOBAL "BASS_ATTRIB_MUSIC_VOL_GLOBAL"
  cdef DWORD _BASS_ATTRIB_MUSIC_ACTIVE "BASS_ATTRIB_MUSIC_ACTIVE"
  cdef DWORD _BASS_ATTRIB_MUSIC_VOL_CHAN "BASS_ATTRIB_MUSIC_VOL_CHAN"
  cdef DWORD _BASS_ATTRIB_MUSIC_VOL_INST "BASS_ATTRIB_MUSIC_VOL_INST"

  cdef DWORD _BASS_DATA_AVAILABLE "BASS_DATA_AVAILABLE"
  cdef DWORD _BASS_DATA_FIXED "BASS_DATA_FIXED"
  cdef DWORD _BASS_DATA_FLOAT "BASS_DATA_FLOAT"
  cdef DWORD _BASS_DATA_FFT256 "BASS_DATA_FFT256"
  cdef DWORD _BASS_DATA_FFT512 "BASS_DATA_FFT512"
  cdef DWORD _BASS_DATA_FFT1024 "BASS_DATA_FFT1024"
  cdef DWORD _BASS_DATA_FFT2048 "BASS_DATA_FFT2048"
  cdef DWORD _BASS_DATA_FFT4096 "BASS_DATA_FFT4096"
  cdef DWORD _BASS_DATA_FFT8192 "BASS_DATA_FFT8192"
  cdef DWORD _BASS_DATA_FFT16384 "BASS_DATA_FFT16384"
  cdef DWORD _BASS_DATA_FFT_INDIVIDUAL "BASS_DATA_FFT_INDIVIDUAL"
  cdef DWORD _BASS_DATA_FFT_NOWINDOW "BASS_DATA_FFT_NOWINDOW"
  cdef DWORD _BASS_DATA_FFT_REMOVEDC "BASS_DATA_FFT_REMOVEDC"
  cdef DWORD _BASS_DATA_FFT_COMPLEX "BASS_DATA_FFT_COMPLEX"
  cdef DWORD _BASS_DATA_FFT_NYQUIST "BASS_DATA_FFT_NYQUIST"

  cdef DWORD _BASS_LEVEL_MONO "BASS_LEVEL_MONO"
  cdef DWORD _BASS_LEVEL_STEREO "BASS_LEVEL_STEREO"
  cdef DWORD _BASS_LEVEL_RMS "BASS_LEVEL_RMS"

  cdef DWORD _BASS_TAG_ID3 "BASS_TAG_ID3"
  cdef DWORD _BASS_TAG_ID3V2 "BASS_TAG_ID3V2"
  cdef DWORD _BASS_TAG_OGG "BASS_TAG_OGG"
  cdef DWORD _BASS_TAG_HTTP "BASS_TAG_HTTP"
  cdef DWORD _BASS_TAG_ICY "BASS_TAG_ICY"
  cdef DWORD _BASS_TAG_META "BASS_TAG_META"
  cdef DWORD _BASS_TAG_APE "BASS_TAG_APE"
  cdef DWORD _BASS_TAG_MP4 "BASS_TAG_MP4"
  cdef DWORD _BASS_TAG_VENDOR "BASS_TAG_VENDOR"
  cdef DWORD _BASS_TAG_LYRICS3 "BASS_TAG_LYRICS3"
  cdef DWORD _BASS_TAG_CA_CODEC "BASS_TAG_CA_CODEC"
  cdef DWORD _BASS_TAG_MF "BASS_TAG_MF"
  cdef DWORD _BASS_TAG_WAVEFORMAT "BASS_TAG_WAVEFORMAT"
  cdef DWORD _BASS_TAG_RIFF_INFO "BASS_TAG_RIFF_INFO"
  cdef DWORD _BASS_TAG_RIFF_BEXT "BASS_TAG_RIFF_BEXT"
  cdef DWORD _BASS_TAG_RIFF_CART "BASS_TAG_RIFF_CART"
  cdef DWORD _BASS_TAG_RIFF_CUE "BASS_TAG_RIFF_CUE"
  cdef DWORD _BASS_TAG_RIFF_DISP "BASS_TAG_RIFF_DISP"
  cdef DWORD _BASS_TAG_RIFF_SMPL "BASS_TAG_RIFF_SMPL"
  cdef DWORD _BASS_TAG_APE_BINARY "BASS_TAG_APE_BINARY"
  cdef DWORD _BASS_TAG_MUSIC_NAME "BASS_TAG_MUSIC_NAME"
  cdef DWORD _BASS_TAG_MUSIC_MESSAGE "BASS_TAG_MUSIC_MESSAGE"
  cdef DWORD _BASS_TAG_MUSIC_ORDERS "BASS_TAG_MUSIC_ORDERS"
  cdef DWORD _BASS_TAG_MUSIC_INST "BASS_TAG_MUSIC_INST"
  cdef DWORD _BASS_TAG_MUSIC_SAMPLE "BASS_TAG_MUSIC_SAMPLE"

  cdef DWORD _BASS_POS_BYTE "BASS_POS_BYTE"
  cdef DWORD _BASS_POS_MUSIC_ORDER "BASS_POS_MUSIC_ORDER"
  cdef DWORD _BASS_POS_OGG "BASS_POS_OGG"
  cdef DWORD _BASS_POS_INEXACT "BASS_POS_INEXACT"
  cdef DWORD _BASS_POS_DECODE "BASS_POS_DECODE"
  cdef DWORD _BASS_POS_DECODETO "BASS_POS_DECODETO"
  cdef DWORD _BASS_POS_SCAN "BASS_POS_SCAN"
  cdef DWORD _BASS_POS_RELATIVE "BASS_POS_RELATIVE"

  cdef DWORD _BASS_NODEVICE "BASS_NODEVICE"

  cdef DWORD _BASS_INPUT_OFF "BASS_INPUT_OFF"
  cdef DWORD _BASS_INPUT_ON "BASS_INPUT_ON"

  cdef DWORD _BASS_INPUT_TYPE_MASK "BASS_INPUT_TYPE_MASK"
  cdef DWORD _BASS_INPUT_TYPE_UNDEF "BASS_INPUT_TYPE_UNDEF"
  cdef DWORD _BASS_INPUT_TYPE_DIGITAL "BASS_INPUT_TYPE_DIGITAL"
  cdef DWORD _BASS_INPUT_TYPE_LINE "BASS_INPUT_TYPE_LINE"
  cdef DWORD _BASS_INPUT_TYPE_MIC "BASS_INPUT_TYPE_MIC"
  cdef DWORD _BASS_INPUT_TYPE_SYNTH "BASS_INPUT_TYPE_SYNTH"
  cdef DWORD _BASS_INPUT_TYPE_CD "BASS_INPUT_TYPE_CD"
  cdef DWORD _BASS_INPUT_TYPE_PHONE "BASS_INPUT_TYPE_PHONE"
  cdef DWORD _BASS_INPUT_TYPE_SPEAKER "BASS_INPUT_TYPE_SPEAKER"
  cdef DWORD _BASS_INPUT_TYPE_WAVE "BASS_INPUT_TYPE_WAVE"
  cdef DWORD _BASS_INPUT_TYPE_AUX "BASS_INPUT_TYPE_AUX"
  cdef DWORD _BASS_INPUT_TYPE_ANALOG "BASS_INPUT_TYPE_ANALOG"

  cdef DWORD _BASS_FX_DX8_CHORUS "BASS_FX_DX8_CHORUS"
  cdef DWORD _BASS_FX_DX8_COMPRESSOR "BASS_FX_DX8_COMPRESSOR"
  cdef DWORD _BASS_FX_DX8_DISTORTION "BASS_FX_DX8_DISTORTION"
  cdef DWORD _BASS_FX_DX8_ECHO "BASS_FX_DX8_ECHO"
  cdef DWORD _BASS_FX_DX8_FLANGER "BASS_FX_DX8_FLANGER"
  cdef DWORD _BASS_FX_DX8_GARGLE "BASS_FX_DX8_GARGLE"
  cdef DWORD _BASS_FX_DX8_I3DL2REVERB "BASS_FX_DX8_I3DL2REVERB"
  cdef DWORD _BASS_FX_DX8_PARAMEQ "BASS_FX_DX8_PARAMEQ"
  cdef DWORD _BASS_FX_DX8_REVERB "BASS_FX_DX8_REVERB"
  cdef DWORD _BASS_FX_VOLUME "BASS_FX_VOLUME"

  cdef DWORD _BASS_DX8_PHASE_NEG_180 "BASS_DX8_PHASE_NEG_180"
  cdef DWORD _BASS_DX8_PHASE_NEG_90 "BASS_DX8_PHASE_NEG_90"
  cdef DWORD _BASS_DX8_PHASE_ZERO "BASS_DX8_PHASE_ZERO"
  cdef DWORD _BASS_DX8_PHASE_90 "BASS_DX8_PHASE_90"
  cdef DWORD _BASS_DX8_PHASE_180 "BASS_DX8_PHASE_180"

  cdef DWORD _BASS_IOSNOTIFY_INTERRUPT "BASS_IOSNOTIFY_INTERRUPT"
  cdef DWORD _BASS_IOSNOTIFY_INTERRUPT_END "BASS_IOSNOTIFY_INTERRUPT_END"

  ctypedef void (*FILECLOSEPROC)(void *user)
  ctypedef QWORD (*FILELENPROC)(void *user)
  ctypedef DWORD (*FILEREADPROC)(void *buffer, DWORD length, void *user)
  ctypedef bint (*FILESEEKPROC)(QWORD offset, void *user)
  ctypedef DWORD (*STREAMPROC)(HSTREAM handle, void *buffer, DWORD length, void *user)
  ctypedef void (*DOWNLOADPROC)(const void *buffer, DWORD length, void *user)
  ctypedef void (*SYNCPROC)(HSYNC handle, DWORD channel, DWORD data, void *user)
  ctypedef void (*DSPPROC)(HDSP handle, DWORD channel, void *buffer, DWORD length, void *user)
  ctypedef bint (*RECORDPROC)(HRECORD handle, const void *buffer, DWORD length, void *user)
  ctypedef void (*IOSNOTIFYPROC)(DWORD status)

  ctypedef struct BASS_DEVICEINFO:
    const char *name
    const char *driver
    DWORD flags

  ctypedef struct BASS_INFO:
    DWORD flags
    DWORD hwsize
    DWORD hwfree
    DWORD freesam
    DWORD free3d
    DWORD minrate
    DWORD maxrate
    bint eax
    DWORD minbuf
    DWORD dsver
    DWORD latency
    DWORD initflags
    DWORD speakers
    DWORD freq

  ctypedef struct BASS_SAMPLE:
    DWORD freq
    float volume
    float pan
    DWORD flags
    DWORD length
    DWORD max
    DWORD origres
    DWORD chans
    DWORD mingap
    DWORD mode3d
    float mindist
    float maxdist
    DWORD iangle
    DWORD oangle
    float outvol
    DWORD vam
    DWORD priority

  ctypedef struct BASS_CHANNELINFO:
    DWORD freq
    DWORD chans
    DWORD flags
    DWORD ctype
    DWORD origres
    HPLUGIN plugin
    HSAMPLE sample
    const char *filename


  ctypedef struct BASS_RECORDINFO:
    DWORD flags
    DWORD formats
    DWORD inputs
    bint singlein
    DWORD freq

  ctypedef struct BASS_PLUGINFORM:
    DWORD ctype
    const char *name
    const char *exts

  ctypedef struct BASS_PLUGININFO:
    DWORD version
    DWORD formatc
    const BASS_PLUGINFORM *formats

  ctypedef struct BASS_3DVECTOR:
    float x
    float y
    float z

  ctypedef struct BASS_FILEPROCS:
    FILECLOSEPROC *close
    FILELENPROC *length
    FILEREADPROC *read
    FILESEEKPROC *seek

  ctypedef struct TAG_ID3:
    char id[3]
    char title[30]
    char artist[30]
    char album[30]
    char year[4]
    char comment[30]
    BYTE genre

  ctypedef struct TAG_APE_BINARY:
    const char *key
    const void *data
    DWORD length

  ctypedef struct TAG_BEXT:
    char Description[256]
    char Originator[32]
    char OriginatorReference[32]
    char OriginationDate[10]
    char OriginationTime[8]
    QWORD TimeReference
    WORD Version
    BYTE UMID[64]
    BYTE Reserved[190]
    char CodingHistory[1]

  ctypedef struct TAG_CART_TIMER:
    DWORD dwUsage
    DWORD dwValue

  ctypedef struct TAG_CART:
    char Version[4]
    char Title[64]
    char Artist[64]
    char CutID[64]
    char ClientID[64]
    char Category[64]
    char Classification[64]
    char OutCue[64]
    char StartDate[10]
    char StartTime[8]
    char EndDate[10]
    char EndTime[8]
    char ProducerAppID[64]
    char ProducerAppVersion[64]
    char UserDef[64]
    DWORD dwLevelReference
    TAG_CART_TIMER PostTimer[8]
    char Reserved[276]
    char URL[1024]
    char TagText[1]

  ctypedef struct TAG_CA_CODEC:
    DWORD ftype
    DWORD atype
    const char *name

  ctypedef struct BASS_DX8_CHORUS:
    float fWetDryMix
    float fDepth
    float fFeedback
    float fFrequency
    DWORD lWaveform
    float fDelay
    DWORD lPhase

  ctypedef struct BASS_DX8_COMPRESSOR:
    float fGain
    float fAttack
    float fRelease
    float fThreshold
    float fRatio
    float fPredelay

  ctypedef struct BASS_DX8_DISTORTION:
    float fGain
    float fEdge
    float fPostEQCenterFrequency
    float fPostEQBandwidth
    float fPreLowpassCutoff

  ctypedef struct BASS_DX8_ECHO:
    float fWetDryMix
    float fFeedback
    float fLeftDelay
    float fRightDelay
    bint lPanDelay

  ctypedef struct BASS_DX8_FLANGER:
    float fWetDryMix
    float fDepth
    float fFeedback
    float fFrequency
    DWORD lWaveform
    float fDelay
    DWORD lPhase

  ctypedef struct BASS_DX8_GARGLE:
    DWORD dwRateHz
    DWORD dwWaveShape

  ctypedef struct BASS_DX8_I3DL2REVERB:
    int lRoom
    int lRoomHF
    float flRoomRolloffFactor
    float flDecayTime
    float flDecayHFRatio
    int lReflections
    float flReflectionsDelay
    int lReverb
    float flReverbDelay
    float flDiffusion
    float flDensity
    float flHFReference

  ctypedef struct BASS_DX8_PARAMEQ:
    float fCenter
    float fBandwidth
    float fGain

  ctypedef struct BASS_DX8_REVERB:
    float fInGain
    float fReverbMix
    float fReverbTime
    float fHighFreqRTRatio

  ctypedef struct BASS_FX_VOLUME_PARAM:
    float fTarget
    float fCurrent
    float fTime
    DWORD lCurve

  cdef DWORD BASS_GetVersion()
  cdef bint BASS_SetConfig(DWORD option, DWORD value)
  cdef DWORD BASS_GetConfig(DWORD option)
  cdef bint BASS_SetConfigPtr(DWORD option, const void *value)
  cdef void *BASS_GetConfigPtr(DWORD option)
  cdef int BASS_ErrorGetCode()
  cdef bint BASS_GetDeviceInfo(DWORD device, BASS_DEVICEINFO *info)
  cdef bint BASS_Init(int device, DWORD freq, DWORD flags, void *win, const void *dsguid)
  cdef bint BASS_SetDevice(DWORD device)
  cdef DWORD BASS_GetDevice()
  cdef bint BASS_Free()
  IF UNAME_SYSNAME=='Windows':
   cdef void *BASS_GetDSoundObject(DWORD object)
   cdef bint BASS_SetEAXParameters(int env, float vol, float decay, float damp)
   cdef bint BASS_GetEAXParameters(DWORD *env, float *vol, float *decay, float *damp)
  cdef bint BASS_GetInfo(BASS_INFO *info)
  cdef bint BASS_IsStarted()
  cdef bint BASS_Update(DWORD length)
  cdef float BASS_GetCPU()
  cdef bint BASS_Start()
  cdef bint BASS_Stop()
  cdef bint BASS_Pause()
  cdef bint BASS_SetVolume(float volume)
  cdef float BASS_GetVolume()
  cdef HPLUGIN BASS_PluginLoad(const char *file, DWORD flags)
  cdef bint BASS_PluginFree(HPLUGIN handle)
  cdef const BASS_PLUGININFO *BASS_PluginGetInfo(HPLUGIN handle)
  cdef bint BASS_Set3DFactors(float distf, float rollf, float doppf)
  cdef bint BASS_Get3DFactors(float *distf, float *rollf, float *doppf)
  cdef bint BASS_Set3DPosition(const BASS_3DVECTOR *pos, const BASS_3DVECTOR *vel, const BASS_3DVECTOR *front, const BASS_3DVECTOR *top)
  cdef bint BASS_Get3DPosition(BASS_3DVECTOR *pos, BASS_3DVECTOR *vel, BASS_3DVECTOR *front, BASS_3DVECTOR *top)
  cdef void BASS_Apply3D()
  cdef HMUSIC BASS_MusicLoad(bint mem, const void *file, QWORD offset, DWORD length, DWORD flags, DWORD freq)
  cdef bint BASS_MusicFree(HMUSIC handle)
  cdef HSAMPLE BASS_SampleLoad(bint mem, const void *file, QWORD offset, DWORD length, DWORD max, DWORD flags)
  cdef HSAMPLE BASS_SampleCreate(DWORD length, DWORD freq, DWORD chans, DWORD max, DWORD flags)
  cdef bint BASS_SampleFree(HSAMPLE handle)
  cdef bint BASS_SampleSetData(HSAMPLE handle, const void *buffer)
  cdef bint BASS_SampleGetData(HSAMPLE handle, void *buffer)
  cdef bint BASS_SampleGetInfo(HSAMPLE handle, BASS_SAMPLE *info)
  cdef bint BASS_SampleSetInfo(HSAMPLE handle, const BASS_SAMPLE *info)
  cdef HCHANNEL BASS_SampleGetChannel(HSAMPLE handle, bint onlynew)
  cdef DWORD BASS_SampleGetChannels(HSAMPLE handle, HCHANNEL *channels)
  cdef bint BASS_SampleStop(HSAMPLE handle)
  cdef HSTREAM BASS_StreamCreate(DWORD freq, DWORD chans, DWORD flags, STREAMPROC *proc, void *user)
  cdef HSTREAM BASS_StreamCreateFile(bint mem, const void *file, QWORD offset, QWORD length, DWORD flags)
  cdef HSTREAM BASS_StreamCreateURL(const char *url, DWORD offset, DWORD flags, DOWNLOADPROC *proc, void *user)
  cdef HSTREAM BASS_StreamCreateFileUser(DWORD system, DWORD flags, const BASS_FILEPROCS *proc, void *user)
  cdef bint BASS_StreamFree(HSTREAM handle)
  cdef QWORD BASS_StreamGetFilePosition(HSTREAM handle, DWORD mode)
  cdef DWORD BASS_StreamPutData(HSTREAM handle, const void *buffer, DWORD length)
  cdef DWORD BASS_StreamPutFileData(HSTREAM handle, const void *buffer, DWORD length)
  cdef bint BASS_RecordGetDeviceInfo(DWORD device, BASS_DEVICEINFO *info)
  cdef bint BASS_RecordInit(int device)
  cdef bint BASS_RecordSetDevice(DWORD device)
  cdef DWORD BASS_RecordGetDevice()
  cdef bint BASS_RecordFree()
  cdef bint BASS_RecordGetInfo(BASS_RECORDINFO *info)
  cdef const char *BASS_RecordGetInputName(int input)
  cdef bint BASS_RecordSetInput(int input, DWORD flags, float volume)
  cdef DWORD BASS_RecordGetInput(int input, float *volume)
  cdef HRECORD BASS_RecordStart(DWORD freq, DWORD chans, DWORD flags, RECORDPROC *proc, void *user)
  cdef double BASS_ChannelBytes2Seconds(DWORD handle, QWORD pos)
  cdef QWORD BASS_ChannelSeconds2Bytes(DWORD handle, double pos)
  cdef DWORD BASS_ChannelGetDevice(DWORD handle)
  cdef bint BASS_ChannelSetDevice(DWORD handle, DWORD device)
  cdef DWORD BASS_ChannelIsActive(DWORD handle)
  cdef bint BASS_ChannelGetInfo(DWORD handle, BASS_CHANNELINFO *info)
  cdef const char *BASS_ChannelGetTags(DWORD handle, DWORD tags)
  cdef DWORD BASS_ChannelFlags(DWORD handle, DWORD flags, DWORD mask)
  cdef bint BASS_ChannelUpdate(DWORD handle, DWORD length)
  cdef bint BASS_ChannelLock(DWORD handle, bint lock)
  cdef bint BASS_ChannelPlay(DWORD handle, bint restart)
  cdef bint BASS_ChannelStop(DWORD handle)
  cdef bint BASS_ChannelPause(DWORD handle)
  cdef bint BASS_ChannelSetAttribute(DWORD handle, DWORD attrib, float value)
  cdef bint BASS_ChannelGetAttribute(DWORD handle, DWORD attrib, float *value)
  cdef bint BASS_ChannelSlideAttribute(DWORD handle, DWORD attrib, float value, DWORD time)
  cdef bint BASS_ChannelIsSliding(DWORD handle, DWORD attrib)
  cdef bint BASS_ChannelSetAttributeEx(DWORD handle, DWORD attrib, void *value, DWORD size)
  cdef DWORD BASS_ChannelGetAttributeEx(DWORD handle, DWORD attrib, void *value, DWORD size)
  cdef bint BASS_ChannelSet3DAttributes(DWORD handle, int mode, float min, float max, int iangle, int oangle, float outvol)
  cdef bint BASS_ChannelGet3DAttributes(DWORD handle, DWORD *mode, float *min, float *max, DWORD *iangle, DWORD *oangle, float *outvol)
  cdef bint BASS_ChannelSet3DPosition(DWORD handle, const BASS_3DVECTOR *pos, const BASS_3DVECTOR *orient, const BASS_3DVECTOR *vel)
  cdef bint BASS_ChannelGet3DPosition(DWORD handle, BASS_3DVECTOR *pos, BASS_3DVECTOR *orient, BASS_3DVECTOR *vel)
  cdef QWORD BASS_ChannelGetLength(DWORD handle, DWORD mode)
  cdef bint BASS_ChannelSetPosition(DWORD handle, QWORD pos, DWORD mode)
  cdef QWORD BASS_ChannelGetPosition(DWORD handle, DWORD mode)
  cdef DWORD BASS_ChannelGetLevel(DWORD handle)
  cdef bint BASS_ChannelGetLevelEx(DWORD handle, float *levels, float length, DWORD flags)
  cdef DWORD BASS_ChannelGetData(DWORD handle, void *buffer, DWORD length)
  cdef HSYNC BASS_ChannelSetSync(DWORD handle, DWORD type, QWORD param, SYNCPROC *proc, void *user)
  cdef bint BASS_ChannelRemoveSync(DWORD handle, HSYNC sync)
  cdef HDSP BASS_ChannelSetDSP(DWORD handle, DSPPROC *proc, void *user, int priority)
  cdef bint BASS_ChannelRemoveDSP(DWORD handle, HDSP dsp)
  cdef bint BASS_ChannelSetLink(DWORD handle, DWORD chan)
  cdef bint BASS_ChannelRemoveLink(DWORD handle, DWORD chan)
  cdef HFX BASS_ChannelSetFX(DWORD handle, DWORD type, int priority)
  cdef bint BASS_ChannelRemoveFX(DWORD handle, HFX fx)
  cdef bint BASS_FXSetParameters(HFX handle, const void *params)
  cdef bint BASS_FXGetParameters(HFX handle, void *params)
  cdef bint BASS_FXReset(HFX handle)
  cdef bint BASS_FXSetPriority(HFX handle, int priority)

  cdef BYTE LOBYTE(QWORD a)
  cdef BYTE HIBYTE(QWORD a)
  cdef WORD LOWORD(QWORD a)
  cdef WORD HIWORD(QWORD a)
  cdef WORD MAKEWORD(QWORD a, QWORD b)
  cdef DWORD MAKELONG(QWORD a, QWORD b)

cpdef __Evaluate()
cdef class BASS:
  cpdef GetOutputDevice(BASS self, int device=?)
  cpdef LoadPlugin(BASS self, object filename, DWORD flags=?)
  cpdef Update(BASS self, DWORD length)
