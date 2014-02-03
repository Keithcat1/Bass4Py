# constants
BASS_OK = 0 # all is OK
BASS_ERROR_MEM = 1 # memory error
BASS_ERROR_FILEOPEN = 2 # can't open the file
BASS_ERROR_DRIVER = 3 # can't find a free/valid driver
BASS_ERROR_BUFLOST = 4 # the sample buffer was lost
BASS_ERROR_HANDLE = 5 # invalid handle
BASS_ERROR_FORMAT = 6 # unsupported sample format
BASS_ERROR_POSITION = 7 # invalid position
BASS_ERROR_INIT = 8 # BASS_Init has not been successfully called
BASS_ERROR_START = 9 # BASS_Start has not been successfully called
BASS_ERROR_ALREADY = 14 # already initialized/paused/whatever
BASS_ERROR_NOCHAN = 18 # can't get a free channel
BASS_ERROR_ILLTYPE = 19 # an illegal type was specified
BASS_ERROR_ILLPARAM = 20 # an illegal parameter was specified
BASS_ERROR_NO3D = 21 # no 3D support
BASS_ERROR_NOEAX = 22 # no EAX support
BASS_ERROR_DEVICE = 23 # illegal device number
BASS_ERROR_NOPLAY = 24 # not playing
BASS_ERROR_FREQ = 25 # illegal sample rate
BASS_ERROR_NOTFILE = 27 # the stream is not a file stream
BASS_ERROR_NOHW = 29 # no hardware voices available
BASS_ERROR_EMPTY = 31 # the MOD music has no sequence data
BASS_ERROR_NONET = 32 # no internet connection could be opened
BASS_ERROR_CREATE = 33 # couldn't create the file
BASS_ERROR_NOFX = 34 # effects are not available
BASS_ERROR_NOTAVAIL = 37 # requested data is not available
BASS_ERROR_DECODE = 38 # the channel is a "decoding channel"
BASS_ERROR_DX = 39 # a sufficient DirectX version is not installed
BASS_ERROR_TIMEOUT = 40 # connection timedout
BASS_ERROR_FILEFORM = 41 # unsupported file format
BASS_ERROR_SPEAKER = 42 # unavailable speaker
BASS_ERROR_VERSION = 43 # invalid BASS version (used by add-ons)
BASS_ERROR_CODEC = 44 # codec is not available/supported
BASS_ERROR_ENDED = 45 # the channel/file has ended
BASS_ERROR_UNKNOWN = -1 # some other mystery problem

BASS_CONFIG_BUFFER = 0
BASS_CONFIG_UPDATEPERIOD = 1
BASS_CONFIG_GVOL_SAMPLE = 4
BASS_CONFIG_GVOL_STREAM = 5
BASS_CONFIG_GVOL_MUSIC = 6
BASS_CONFIG_CURVE_VOL = 7
BASS_CONFIG_CURVE_PAN = 8
BASS_CONFIG_FLOATDSP = 9
BASS_CONFIG_3DALGORITHM = 10
BASS_CONFIG_NET_TIMEOUT = 11
BASS_CONFIG_NET_BUFFER = 12
BASS_CONFIG_PAUSE_NOPLAY = 13
BASS_CONFIG_NET_PREBUF = 15
BASS_CONFIG_NET_PASSIVE = 18
BASS_CONFIG_REC_BUFFER = 19
BASS_CONFIG_NET_PLAYLIST = 21
BASS_CONFIG_MUSIC_VIRTUAL = 22
BASS_CONFIG_VERIFY = 23
BASS_CONFIG_UPDATETHREADS = 24

BASS_CONFIG_NET_AGENT = 16
BASS_CONFIG_NET_PROXY = 17

BASS_DEVICE_8BITS = 1 # use 8 bit resolution, else 16 bit
BASS_DEVICE_MONO = 2 # use mono, else stereo
BASS_DEVICE_3D = 4 # enable 3D functionality
BASS_DEVICE_LATENCY = 256 # calculate device latency (BASS_INFO struct)
BASS_DEVICE_CPSPEAKERS = 1024 # detect speakers via Windows control panel
BASS_DEVICE_SPEAKERS = 2048 # force enabling of speaker assignment
BASS_DEVICE_NOSPEAKER = 4096 # ignore speaker arrangement

BASS_OBJECT_DS = 1 # IDirectSound
BASS_OBJECT_DS3DL = 2 # IDirectSound3DListener

BASS_DEVICE_ENABLED = 1
BASS_DEVICE_DEFAULT = 2
BASS_DEVICE_INIT = 4

DSCAPS_CONTINUOUSRATE = 0x00000010 # supports all sample rates between min/maxrate
DSCAPS_EMULDRIVER = 0x00000020 # device does NOT have hardware DirectSound support
DSCAPS_CERTIFIED = 0x00000040 # device driver has been certified by Microsoft
DSCAPS_SECONDARYMONO = 0x00000100 # mono
DSCAPS_SECONDARYSTEREO = 0x00000200 # stereo
DSCAPS_SECONDARY8BIT = 0x00000400 # 8 bit
DSCAPS_SECONDARY16BIT = 0x00000800 # 16 bit

WAVE_FORMAT_1M08 = 0x00000001
WAVE_FORMAT_1S08 = 0x00000002
WAVE_FORMAT_1M16 = 0x00000004
WAVE_FORMAT_1S16 = 0x00000008
WAVE_FORMAT_2M08 = 0x00000010
WAVE_FORMAT_2S08 = 0x00000020
WAVE_FORMAT_2M16 = 0x00000040
WAVE_FORMAT_2S16 = 0x00000080
WAVE_FORMAT_4M08 = 0x00000100
WAVE_FORMAT_4S08 = 0x00000200
WAVE_FORMAT_4M16 = 0x00000400
WAVE_FORMAT_4S16 = 0x00000800

BASS_SAMPLE_8BITS = 1 # 8 bit
BASS_SAMPLE_FLOAT = 256 # 32-bit floating-point
BASS_SAMPLE_MONO = 2 # mono
BASS_SAMPLE_LOOP = 4 # looped
BASS_SAMPLE_3D = 8 # 3D functionality
BASS_SAMPLE_SOFTWARE = 16 # not using hardware mixing
BASS_SAMPLE_MUTEMAX = 32 # mute at max distance (3D only)
BASS_SAMPLE_VAM = 64 # DX7 voice allocation & management
BASS_SAMPLE_FX = 128 # old implementation of DX8 effects
BASS_SAMPLE_OVER_VOL = 0x10000 # override lowest volume
BASS_SAMPLE_OVER_POS = 0x20000 # override longest playing
BASS_SAMPLE_OVER_DIST = 0x30000 # override furthest from listener (3D only)


# callbacks

BASS_STREAM_PRESCAN = 0x20000 # enable pin-point seeking/length (MP3/MP2/MP1)
BASS_MP3_SETPOS = BASS_STREAM_PRESCAN
BASS_STREAM_AUTOFREE = 0x40000 # automatically free the stream when it stop/ends
BASS_STREAM_RESTRATE = 0x80000 # restrict the download rate of internet file streams
BASS_STREAM_BLOCK = 0x100000 # download/play internet file stream in small blocks
BASS_STREAM_DECODE = 0x200000 # don't play the stream, only decode (BASS_ChannelGetData)
BASS_STREAM_STATUS = 0x800000 # give server status info (HTTP/ICY tags) in DOWNLOADPROC

BASS_MUSIC_FLOAT = BASS_SAMPLE_FLOAT
BASS_MUSIC_MONO = BASS_SAMPLE_MONO
BASS_MUSIC_LOOP = BASS_SAMPLE_LOOP
BASS_MUSIC_3D = BASS_SAMPLE_3D
BASS_MUSIC_FX = BASS_SAMPLE_FX
BASS_MUSIC_AUTOFREE = BASS_STREAM_AUTOFREE
BASS_MUSIC_DECODE = BASS_STREAM_DECODE
BASS_MUSIC_PRESCAN = BASS_STREAM_PRESCAN # calculate playback length
BASS_MUSIC_CALCLEN = BASS_MUSIC_PRESCAN

BASS_MUSIC_RAMP = 0x200 # normal ramping
BASS_MUSIC_RAMPS = 0x400 # sensitive ramping
BASS_MUSIC_SURROUND = 0x800 # surround sound
BASS_MUSIC_SURROUND2 = 0x1000 # surround sound (mode 2)
BASS_MUSIC_FT2MOD = 0x2000 # play .MOD as FastTracker 2 does
BASS_MUSIC_PT1MOD = 0x4000 # play .MOD as ProTracker 1 does
BASS_MUSIC_NONINTER = 0x10000 # non-interpolated sample mixing
BASS_MUSIC_SINCINTER = 0x800000 # sinc interpolated sample mixing
BASS_MUSIC_POSRESET = 0x8000 # stop all notes when moving position
BASS_MUSIC_POSRESETEX = 0x400000 # stop all notes and reset bmp/etc when moving position
BASS_MUSIC_STOPBACK = 0x80000 # stop the music on a backwards jump effect
BASS_MUSIC_NOSAMPLE = 0x100000 # don't load the samples

BASS_SPEAKER_FRONT = 0x1000000 # front speakers
BASS_SPEAKER_REAR = 0x2000000 # rear/side speakers
BASS_SPEAKER_CENLFE = 0x3000000 # center & LFE speakers (5.1)
BASS_SPEAKER_REAR2 = 0x4000000 # rear center speakers (7.1)
BASS_SPEAKER_N = lambda n: n<<24 # n'th pair of speakers (max 15)
BASS_SPEAKER_LEFT = 0x10000000 # modifier: left
BASS_SPEAKER_RIGHT = 0x20000000 # modifier: right

BASS_SPEAKER_FRONTLEFT = BASS_SPEAKER_FRONT|BASS_SPEAKER_LEFT
BASS_SPEAKER_FRONTRIGHT = BASS_SPEAKER_FRONT|BASS_SPEAKER_RIGHT
BASS_SPEAKER_REARLEFT = BASS_SPEAKER_REAR|BASS_SPEAKER_LEFT
BASS_SPEAKER_REARRIGHT = BASS_SPEAKER_REAR|BASS_SPEAKER_RIGHT
BASS_SPEAKER_CENTER = BASS_SPEAKER_CENLFE|BASS_SPEAKER_LEFT
BASS_SPEAKER_LFE = BASS_SPEAKER_CENLFE|BASS_SPEAKER_RIGHT
BASS_SPEAKER_REAR2LEFT = BASS_SPEAKER_REAR2|BASS_SPEAKER_LEFT
BASS_SPEAKER_REAR2RIGHT = BASS_SPEAKER_REAR2|BASS_SPEAKER_RIGHT

BASS_UNICODE = 0x80000000

BASS_RECORD_PAUSE = 0x8000 # start recording paused

BASS_VAM_HARDWARE = 1
BASS_VAM_SOFTWARE = 2
BASS_VAM_TERM_TIME = 4
BASS_VAM_TERM_DIST = 8
BASS_VAM_TERM_PRIO = 16

BASS_CTYPE_STREAM = 0x10000
BASS_CTYPE_STREAM_OGG = 0x10002
BASS_CTYPE_STREAM_MP1 = 0x10003
BASS_CTYPE_STREAM_MP2 = 0x10004
BASS_CTYPE_STREAM_MP3 = 0x10005
BASS_CTYPE_STREAM_AIFF = 0x10006
BASS_CTYPE_STREAM_WAV = 0x40000 # WAVE flag, LOWORD=codec
BASS_CTYPE_STREAM_WAV_PCM = 0x50001
BASS_CTYPE_STREAM_WAV_FLOAT = 0x50003
BASS_CTYPE_MUSIC_MOD = 0x20000
BASS_CTYPE_MUSIC_MTM = 0x20001
BASS_CTYPE_MUSIC_S3M = 0x20002
BASS_CTYPE_MUSIC_XM = 0x20003
BASS_CTYPE_MUSIC_IT = 0x20004
BASS_CTYPE_MUSIC_MO3 = 0x00100 # MO3 flag

BASS_3DMODE_NORMAL = 0 # normal 3D processing
BASS_3DMODE_RELATIVE = 1 # position is relative to the listener
BASS_3DMODE_OFF = 2 # no 3D processing

BASS_3DALG_DEFAULT = 0
BASS_3DALG_OFF = 1
BASS_3DALG_FULL = 2
BASS_3DALG_LIGHT = 3

EAX_ENVIRONMENT_GENERIC = 0
EAX_ENVIRONMENT_PADDEDCELL = 1
EAX_ENVIRONMENT_ROOM = 2
EAX_ENVIRONMENT_BATHROOM = 3
EAX_ENVIRONMENT_LIVINGROOM = 4
EAX_ENVIRONMENT_STONEROOM = 5
EAX_ENVIRONMENT_AUDITORIUM = 6
EAX_ENVIRONMENT_CONCERTHALL = 7
EAX_ENVIRONMENT_CAVE = 8
EAX_ENVIRONMENT_ARENA = 9
EAX_ENVIRONMENT_HANGAR = 10
EAX_ENVIRONMENT_CARPETEDHALLWAY = 11
EAX_ENVIRONMENT_HALLWAY = 12
EAX_ENVIRONMENT_STONECORRIDOR = 13
EAX_ENVIRONMENT_ALLEY = 14
EAX_ENVIRONMENT_FOREST = 15
EAX_ENVIRONMENT_CITY = 16
EAX_ENVIRONMENT_MOUNTAINS = 17
EAX_ENVIRONMENT_QUARRY = 18
EAX_ENVIRONMENT_PLAIN = 19
EAX_ENVIRONMENT_PARKINGLOT = 20
EAX_ENVIRONMENT_SEWERPIPE = 21
EAX_ENVIRONMENT_UNDERWATER = 22
EAX_ENVIRONMENT_DRUGGED = 23
EAX_ENVIRONMENT_DIZZY = 24
EAX_ENVIRONMENT_PSYCHOTIC = 25
EAX_ENVIRONMENT_COUNT = 26

EAX_PRESET_GENERIC         = EAX_ENVIRONMENT_GENERIC,0.5,1.493,0.5
EAX_PRESET_PADDEDCELL      = EAX_ENVIRONMENT_PADDEDCELL,0.25,0.1,0.0
EAX_PRESET_ROOM            = EAX_ENVIRONMENT_ROOM,0.417,0.4,0.666
EAX_PRESET_BATHROOM        = EAX_ENVIRONMENT_BATHROOM,0.653,1.499,0.166
EAX_PRESET_LIVINGROOM      = EAX_ENVIRONMENT_LIVINGROOM,0.208,0.478,0.0
EAX_PRESET_STONEROOM       = EAX_ENVIRONMENT_STONEROOM,0.5,2.309,0.888
EAX_PRESET_AUDITORIUM      = EAX_ENVIRONMENT_AUDITORIUM,0.403,4.279,0.5
EAX_PRESET_CONCERTHALL     = EAX_ENVIRONMENT_CONCERTHALL,0.5,3.961,0.5
EAX_PRESET_CAVE            = EAX_ENVIRONMENT_CAVE,0.5,2.886,1.304
EAX_PRESET_ARENA           = EAX_ENVIRONMENT_ARENA,0.361,7.284,0.332
EAX_PRESET_HANGAR          = EAX_ENVIRONMENT_HANGAR,0.5,10.0,0.3
EAX_PRESET_CARPETEDHALLWAY = EAX_ENVIRONMENT_CARPETEDHALLWAY,0.153,0.259,2.0
EAX_PRESET_HALLWAY         = EAX_ENVIRONMENT_HALLWAY,0.361,1.493,0.0
EAX_PRESET_STONECORRIDOR   = EAX_ENVIRONMENT_STONECORRIDOR,0.444,2.697,0.638
EAX_PRESET_ALLEY           = EAX_ENVIRONMENT_ALLEY,0.25,1.752,0.776
EAX_PRESET_FOREST          = EAX_ENVIRONMENT_FOREST,0.111,3.145,0.472
EAX_PRESET_CITY            = EAX_ENVIRONMENT_CITY,0.111,2.767,0.224
EAX_PRESET_MOUNTAINS       = EAX_ENVIRONMENT_MOUNTAINS,0.194,7.841,0.472
EAX_PRESET_QUARRY          = EAX_ENVIRONMENT_QUARRY,1.0,1.499,0.5
EAX_PRESET_PLAIN           = EAX_ENVIRONMENT_PLAIN,0.097,2.767,0.224
EAX_PRESET_PARKINGLOT      = EAX_ENVIRONMENT_PARKINGLOT,0.208,1.652,1.5
EAX_PRESET_SEWERPIPE       = EAX_ENVIRONMENT_SEWERPIPE,0.652,2.886,0.25
EAX_PRESET_UNDERWATER      = EAX_ENVIRONMENT_UNDERWATER,1.0,1.499,0.0
EAX_PRESET_DRUGGED         = EAX_ENVIRONMENT_DRUGGED,0.875,8.392,1.388
EAX_PRESET_DIZZY           = EAX_ENVIRONMENT_DIZZY,0.139,17.234,0.666
EAX_PRESET_PSYCHOTIC       = EAX_ENVIRONMENT_PSYCHOTIC,0.486,7.563,0.806

BASS_STREAMPROC_END = 0x80000000

STREAMPROC_DUMMY=0
STREAMPROC_PUSH=-1
STREAMFILE_NOBUFFER = 0
STREAMFILE_BUFFER = 1
STREAMFILE_BUFFERPUSH = 2

BASS_FILEDATA_END = 0 # end & close the file

BASS_FILEPOS_CURRENT = 0
BASS_FILEPOS_DECODE = BASS_FILEPOS_CURRENT
BASS_FILEPOS_DOWNLOAD = 1
BASS_FILEPOS_END = 2
BASS_FILEPOS_START = 3
BASS_FILEPOS_CONNECTED = 4
BASS_FILEPOS_BUFFER = 5
BASS_FILEPOS_SOCKET = 6

BASS_SYNC_POS = 0
BASS_SYNC_END = 2
BASS_SYNC_META = 4
BASS_SYNC_SLIDE = 5
BASS_SYNC_STALL = 6
BASS_SYNC_DOWNLOAD = 7
BASS_SYNC_FREE = 8
BASS_SYNC_SETPOS = 11
BASS_SYNC_MUSICPOS = 10
BASS_SYNC_MUSICINST = 1
BASS_SYNC_MUSICFX = 3
BASS_SYNC_OGG_CHANGE = 12
BASS_SYNC_MIXTIME = 0x40000000 # FLAG: sync at mixtime, else at playtime
BASS_SYNC_ONETIME = 0x80000000 # FLAG: sync only once, else continuously

BASS_ACTIVE_STOPPED = 0
BASS_ACTIVE_PLAYING = 1
BASS_ACTIVE_STALLED = 2
BASS_ACTIVE_PAUSED = 3

BASS_ATTRIB_FREQ = 1
BASS_ATTRIB_VOL = 2
BASS_ATTRIB_PAN = 3
BASS_ATTRIB_EAXMIX = 4
BASS_ATTRIB_MUSIC_AMPLIFY = 0x100
BASS_ATTRIB_MUSIC_PANSEP = 0x101
BASS_ATTRIB_MUSIC_PSCALER = 0x102
BASS_ATTRIB_MUSIC_BPM = 0x103
BASS_ATTRIB_MUSIC_SPEED = 0x104
BASS_ATTRIB_MUSIC_VOL_GLOBAL = 0x105
BASS_ATTRIB_MUSIC_VOL_CHAN = 0x200 # + channel #
BASS_ATTRIB_MUSIC_VOL_INST = 0x300 # + instrument #

BASS_DATA_AVAILABLE = 0 # query how much data is buffered
BASS_DATA_FLOAT = 0x40000000 # flag: return floating-point sample data
BASS_DATA_FFT256 = 0x80000000 # 256 sample FFT
BASS_DATA_FFT512 = 0x80000001 # 512 FFT
BASS_DATA_FFT1024 = 0x80000002 # 1024 FFT
BASS_DATA_FFT2048 = 0x80000003 # 2048 FFT
BASS_DATA_FFT4096 = 0x80000004 # 4096 FFT
BASS_DATA_FFT8192 = 0x80000005 # 8192 FFT
BASS_DATA_FFT_INDIVIDUAL = 0x10 # FFT flag: FFT for each channel, else all combined
BASS_DATA_FFT_NOWINDOW = 0x20 # FFT flag: no Hanning window

BASS_TAG_ID3 = 0 # ID3v1 tags : TAG_ID3 structure
BASS_TAG_ID3V2 = 1 # ID3v2 tags : variable length block
BASS_TAG_OGG = 2 # OGG comments : series of null-terminated UTF-8 strings
BASS_TAG_HTTP = 3 # HTTP headers : series of null-terminated ANSI strings
BASS_TAG_ICY = 4 # ICY headers : series of null-terminated ANSI strings
BASS_TAG_META = 5 # ICY metadata : ANSI string
BASS_TAG_VENDOR = 9 # OGG encoder : UTF-8 string
BASS_TAG_LYRICS3 = 10 # Lyric3v2 tag : ASCII string

BASS_TAG_RIFF_INFO = 0x100 # RIFF "INFO" tags : series of null-terminated ANSI strings
BASS_TAG_RIFF_BEXT = 0x101 # RIFF/BWF Broadcast Audio Extension tags : TAG_BEXT structure
BASS_TAG_MUSIC_NAME = 0x10000 # MOD music name : ANSI string
BASS_TAG_MUSIC_MESSAGE = 0x10001 # MOD message : ANSI string
BASS_TAG_MUSIC_INST = 0x10100 # + instrument #, MOD instrument name : ANSI string
BASS_TAG_MUSIC_SAMPLE = 0x10300 # + sample #, MOD sample name : ANSI string

BASS_POS_BYTE = 0 # byte position
BASS_POS_MUSIC_ORDER = 1 # order.row position, MAKELONG(order,row)

BASS_INPUT_OFF = 0x10000
BASS_INPUT_ON = 0x20000

BASS_INPUT_TYPE_MASK = 0xff000000
BASS_INPUT_TYPE_UNDEF = 0x00000000
BASS_INPUT_TYPE_DIGITAL = 0x01000000
BASS_INPUT_TYPE_LINE = 0x02000000
BASS_INPUT_TYPE_MIC = 0x03000000
BASS_INPUT_TYPE_SYNTH = 0x04000000
BASS_INPUT_TYPE_CD = 0x05000000
BASS_INPUT_TYPE_PHONE = 0x06000000
BASS_INPUT_TYPE_SPEAKER = 0x07000000
BASS_INPUT_TYPE_WAVE = 0x08000000
BASS_INPUT_TYPE_AUX = 0x09000000
BASS_INPUT_TYPE_ANALOG = 0x0a000000

BASS_DX8_PHASE_NEG_180 = 0
BASS_DX8_PHASE_NEG_90 = 1
BASS_DX8_PHASE_ZERO = 2
BASS_DX8_PHASE_90 = 3
BASS_DX8_PHASE_180 = 4

BASS_FX_DX8_CHORUS=0
BASS_FX_DX8_COMPRESSOR=1
BASS_FX_DX8_DISTORTION=2
BASS_FX_DX8_ECHO=3
BASS_FX_DX8_FLANGER=4
BASS_FX_DX8_GARGLE=5
BASS_FX_DX8_I3DL2REVERB=6
BASS_FX_DX8_PARAMEQ=7
BASS_FX_DX8_REVERB=8