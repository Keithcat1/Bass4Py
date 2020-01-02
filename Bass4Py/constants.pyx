from .BASS cimport bass

try:
  from enum import IntFlag, IntEnum, unique
except ImportError:
  from aenum import IntFlag, IntEnum, unique

# only forward constants that are required/important at Python level

@unique
class DEVICE(IntFlag):
  EIGHT_BITS = bass._BASS_DEVICE_8BITS
  MONO = bass._BASS_DEVICE_MONO
  STEREO = bass._BASS_DEVICE_STEREO
  THREE_D = bass._BASS_DEVICE_3D
  LATENCY = bass._BASS_DEVICE_LATENCY
  CPSPEAKERS = bass._BASS_DEVICE_CPSPEAKERS
  SPEAKERS = bass._BASS_DEVICE_SPEAKERS
  NOSPEAKER = bass._BASS_DEVICE_NOSPEAKER
  DMIX = bass._BASS_DEVICE_DMIX
  FREQ = bass._BASS_DEVICE_FREQ
  DSOUND = bass._BASS_DEVICE_DSOUND

@unique
class DEVICE_TYPE(IntFlag):
  NETWORK = bass._BASS_DEVICE_TYPE_NETWORK
  SPEAKERS = bass._BASS_DEVICE_TYPE_SPEAKERS
  LINE = bass._BASS_DEVICE_TYPE_LINE
  HEADPHONES = bass._BASS_DEVICE_TYPE_HEADPHONES
  MICROPHONE = bass._BASS_DEVICE_TYPE_MICROPHONE
  HEADSET = bass._BASS_DEVICE_TYPE_HEADSET
  HANDSET = bass._BASS_DEVICE_TYPE_HANDSET
  DIGITAL = bass._BASS_DEVICE_TYPE_DIGITAL
  SPDIF = bass._BASS_DEVICE_TYPE_SPDIF
  HDMI = bass._BASS_DEVICE_TYPE_HDMI
  DISPLAYPORT = bass._BASS_DEVICE_TYPE_DISPLAYPORT

BASS_OBJECT_DS = bass._BASS_OBJECT_DS
BASS_OBJECT_DS3DL = bass._BASS_OBJECT_DS3DL

DSCAPS_CONTINUOUSRATE = bass._DSCAPS_CONTINUOUSRATE
DSCAPS_EMULDRIVER = bass._DSCAPS_EMULDRIVER
DSCAPS_CERTIFIED = bass._DSCAPS_CERTIFIED
DSCAPS_SECONDARYMONO = bass._DSCAPS_SECONDARYMONO
DSCAPS_SECONDARYSTEREO = bass._DSCAPS_SECONDARYSTEREO
DSCAPS_SECONDARY8BIT = bass._DSCAPS_SECONDARY8BIT
DSCAPS_SECONDARY16BIT = bass._DSCAPS_SECONDARY16BIT

DSCCAPS_EMULDRIVER = bass._DSCCAPS_EMULDRIVER
DSCCAPS_CERTIFIED = bass._DSCCAPS_CERTIFIED

WAVE_FORMAT_1M08 = bass._WAVE_FORMAT_1M08
WAVE_FORMAT_1S08 = bass._WAVE_FORMAT_1S08
WAVE_FORMAT_1M16 = bass._WAVE_FORMAT_1M16
WAVE_FORMAT_1S16 = bass._WAVE_FORMAT_1S16
WAVE_FORMAT_2M08 = bass._WAVE_FORMAT_2M08
WAVE_FORMAT_2S08 = bass._WAVE_FORMAT_2S08
WAVE_FORMAT_2M16 = bass._WAVE_FORMAT_2M16
WAVE_FORMAT_2S16 = bass._WAVE_FORMAT_2S16
WAVE_FORMAT_4M08 = bass._WAVE_FORMAT_4M08
WAVE_FORMAT_4S08 = bass._WAVE_FORMAT_4S08
WAVE_FORMAT_4M16 = bass._WAVE_FORMAT_4M16
WAVE_FORMAT_4S16 = bass._WAVE_FORMAT_4S16

@unique
class SAMPLE(IntFlag):
  EIGHT_BITS = bass._BASS_SAMPLE_8BITS
  FLOAT = bass._BASS_SAMPLE_FLOAT
  MONO = bass._BASS_SAMPLE_MONO
  LOOP = bass._BASS_SAMPLE_LOOP
  THREE_D = bass._BASS_SAMPLE_3D
  SOFTWARE = bass._BASS_SAMPLE_SOFTWARE
  MUTEMAX = bass._BASS_SAMPLE_MUTEMAX
  VAM = bass._BASS_SAMPLE_VAM
  FX = bass._BASS_SAMPLE_FX
  OVER_VOL = bass._BASS_SAMPLE_OVER_VOL
  OVER_POS = bass._BASS_SAMPLE_OVER_POS
  OVER_DIST = bass._BASS_SAMPLE_OVER_DIST

@unique
class MP3(IntFlag):
  MP3_IGNOREDELAY = bass._BASS_MP3_IGNOREDELAY
  MP3_SETPOS = bass._BASS_MP3_SETPOS

@unique
class STREAM(IntFlag):
  EIGHT_BITS = bass._BASS_SAMPLE_8BITS
  FLOAT = bass._BASS_SAMPLE_FLOAT
  MONO = bass._BASS_SAMPLE_MONO
  LOOP = bass._BASS_SAMPLE_LOOP
  THREE_D = bass._BASS_SAMPLE_3D
  SOFTWARE = bass._BASS_SAMPLE_SOFTWARE
  MUTEMAX = bass._BASS_SAMPLE_MUTEMAX
  VAM = bass._BASS_SAMPLE_VAM
  FX = bass._BASS_SAMPLE_FX
  PRESCAN = bass._BASS_STREAM_PRESCAN
  AUTOFREE = bass._BASS_STREAM_AUTOFREE
  RESTRATE = bass._BASS_STREAM_RESTRATE
  BLOCK = bass._BASS_STREAM_BLOCK
  DECODE = bass._BASS_STREAM_DECODE
  STATUS = bass._BASS_STREAM_STATUS
  ASYNCFILE = bass._BASS_ASYNCFILE

@unique
class MUSIC(IntFlag):
  FLOAT = bass._BASS_SAMPLE_FLOAT
  MONO = bass._BASS_SAMPLE_MONO
  LOOP = bass._BASS_SAMPLE_LOOP
  THREE_D = bass._BASS_SAMPLE_3D
  FX = bass._BASS_SAMPLE_FX
  AUTOFREE = bass._BASS_STREAM_AUTOFREE
  DECODE = bass._BASS_STREAM_DECODE
  PRESCAN = bass._BASS_STREAM_PRESCAN
  RAMP = bass._BASS_MUSIC_RAMP
  RAMPS = bass._BASS_MUSIC_RAMPS
  SURROUND = bass._BASS_MUSIC_SURROUND
  SURROUND2 = bass._BASS_MUSIC_SURROUND2
  FT2MOD = bass._BASS_MUSIC_FT2MOD
  PT1MOD = bass._BASS_MUSIC_PT1MOD
  NONINTER = bass._BASS_MUSIC_NONINTER
  SINCINTER = bass._BASS_MUSIC_SINCINTER
  POSRESET = bass._BASS_MUSIC_POSRESET
  POSRESETEX = bass._BASS_MUSIC_POSRESETEX
  STOPBACK = bass._BASS_MUSIC_STOPBACK
  NOSAMPLE = bass._BASS_MUSIC_NOSAMPLE

BASS_SPEAKER_FRONT = bass._BASS_SPEAKER_FRONT
BASS_SPEAKER_REAR = bass._BASS_SPEAKER_REAR
BASS_SPEAKER_CENLFE = bass._BASS_SPEAKER_CENLFE
BASS_SPEAKER_REAR2 = bass._BASS_SPEAKER_REAR2
BASS_SPEAKER_LEFT = bass._BASS_SPEAKER_LEFT
BASS_SPEAKER_RIGHT = bass._BASS_SPEAKER_RIGHT
BASS_SPEAKER_FRONTLEFT = bass._BASS_SPEAKER_FRONTLEFT
BASS_SPEAKER_FRONTRIGHT = bass._BASS_SPEAKER_FRONTRIGHT
BASS_SPEAKER_REARLEFT = bass._BASS_SPEAKER_REARLEFT
BASS_SPEAKER_REARRIGHT = bass._BASS_SPEAKER_REARRIGHT
BASS_SPEAKER_CENTER = bass._BASS_SPEAKER_CENTER
BASS_SPEAKER_LFE = bass._BASS_SPEAKER_LFE
BASS_SPEAKER_REAR2LEFT = bass._BASS_SPEAKER_REAR2LEFT
BASS_SPEAKER_REAR2RIGHT = bass._BASS_SPEAKER_REAR2RIGHT

BASS_RECORD_PAUSE = bass._BASS_RECORD_PAUSE
BASS_RECORD_ECHOCANCEL = bass._BASS_RECORD_ECHOCANCEL
BASS_RECORD_AGC = bass._BASS_RECORD_AGC

BASS_VAM_HARDWARE = bass._BASS_VAM_HARDWARE
BASS_VAM_SOFTWARE = bass._BASS_VAM_SOFTWARE
BASS_VAM_TERM_TIME = bass._BASS_VAM_TERM_TIME
BASS_VAM_TERM_DIST = bass._BASS_VAM_TERM_DIST
BASS_VAM_TERM_PRIO = bass._BASS_VAM_TERM_PRIO

@unique
class CHANNEL_TYPE(IntFlag):
  SAMPLE = bass._BASS_CTYPE_SAMPLE
  RECORD = bass._BASS_CTYPE_RECORD
  STREAM = bass._BASS_CTYPE_STREAM
  STREAM_VORBIS = bass._BASS_CTYPE_STREAM_VORBIS
  STREAM_MP1 = bass._BASS_CTYPE_STREAM_MP1
  STREAM_MP2 = bass._BASS_CTYPE_STREAM_MP2
  STREAM_MP3 = bass._BASS_CTYPE_STREAM_MP3
  STREAM_AIFF = bass._BASS_CTYPE_STREAM_AIFF
  STREAM_CA = bass._BASS_CTYPE_STREAM_CA
  STREAM_MF = bass._BASS_CTYPE_STREAM_MF
  STREAM_WAV = bass._BASS_CTYPE_STREAM_WAV
  STREAM_WAV_PCM = bass._BASS_CTYPE_STREAM_WAV_PCM
  STREAM_WAV_FLOAT = bass._BASS_CTYPE_STREAM_WAV_FLOAT
  MUSIC_MOD = bass._BASS_CTYPE_MUSIC_MOD
  MUSIC_MTM = bass._BASS_CTYPE_MUSIC_MTM
  MUSIC_S3M = bass._BASS_CTYPE_MUSIC_S3M
  MUSIC_XM = bass._BASS_CTYPE_MUSIC_XM
  MUSIC_IT = bass._BASS_CTYPE_MUSIC_IT
  MUSIC_MO3 = bass._BASS_CTYPE_MUSIC_MO3

BASS_3DMODE_NORMAL = bass._BASS_3DMODE_NORMAL
BASS_3DMODE_RELATIVE = bass._BASS_3DMODE_RELATIVE
BASS_3DMODE_OFF = bass._BASS_3DMODE_OFF

@unique
class ALGORITHM_3D(IntFlag):
  DEFAULT = bass._BASS_3DALG_DEFAULT
  OFF = bass._BASS_3DALG_OFF
  FULL = bass._BASS_3DALG_FULL
  LIGHT = bass._BASS_3DALG_LIGHT

@unique
class STREAMFILE(IntFlag):
  NOBUFFER = bass._STREAMFILE_NOBUFFER
  BUFFER = bass._STREAMFILE_BUFFER
  BUFFERPUSH = bass._STREAMFILE_BUFFERPUSH

BASS_FILEDATA_END = bass._BASS_FILEDATA_END

class FILE_POSITION(IntFlag):
  CURRENT = bass._BASS_FILEPOS_CURRENT
  DECODE = bass._BASS_FILEPOS_DECODE
  DOWNLOAD = bass._BASS_FILEPOS_DOWNLOAD
  END = bass._BASS_FILEPOS_END
  START = bass._BASS_FILEPOS_START
  CONNECTED = bass._BASS_FILEPOS_CONNECTED
  BUFFER = bass._BASS_FILEPOS_BUFFER
  SOCKET = bass._BASS_FILEPOS_SOCKET
  ASYNCBUF = bass._BASS_FILEPOS_ASYNCBUF
  SIZE = bass._BASS_FILEPOS_SIZE
  BUFFERING = bass._BASS_FILEPOS_BUFFERING

@unique
class ACTIVE(IntEnum):
  STOPPED = bass._BASS_ACTIVE_STOPPED
  PLAYING = bass._BASS_ACTIVE_PLAYING
  STALLED = bass._BASS_ACTIVE_STALLED
  PAUSED = bass._BASS_ACTIVE_PAUSED
  PAUSED_DEVICE = bass._BASS_ACTIVE_PAUSED_DEVICE

BASS_DATA_AVAILABLE = bass._BASS_DATA_AVAILABLE
BASS_DATA_FIXED = bass._BASS_DATA_FIXED
BASS_DATA_FLOAT = bass._BASS_DATA_FLOAT
BASS_DATA_FFT256 = bass._BASS_DATA_FFT256
BASS_DATA_FFT512 = bass._BASS_DATA_FFT512
BASS_DATA_FFT1024 = bass._BASS_DATA_FFT1024
BASS_DATA_FFT2048 = bass._BASS_DATA_FFT2048
BASS_DATA_FFT4096 = bass._BASS_DATA_FFT4096
BASS_DATA_FFT8192 = bass._BASS_DATA_FFT8192
BASS_DATA_FFT16384 = bass._BASS_DATA_FFT16384
BASS_DATA_FFT_INDIVIDUAL = bass._BASS_DATA_FFT_INDIVIDUAL
BASS_DATA_FFT_NOWINDOW = bass._BASS_DATA_FFT_NOWINDOW
BASS_DATA_FFT_REMOVEDC = bass._BASS_DATA_FFT_REMOVEDC
BASS_DATA_FFT_COMPLEX = bass._BASS_DATA_FFT_COMPLEX
BASS_DATA_FFT_NYQUIST = bass._BASS_DATA_FFT_NYQUIST

BASS_LEVEL_MONO = bass._BASS_LEVEL_MONO
BASS_LEVEL_STEREO = bass._BASS_LEVEL_STEREO
BASS_LEVEL_RMS = bass._BASS_LEVEL_RMS

BASS_TAG_ID3 = bass._BASS_TAG_ID3
BASS_TAG_ID3V2 = bass._BASS_TAG_ID3V2
BASS_TAG_OGG = bass._BASS_TAG_OGG
BASS_TAG_HTTP = bass._BASS_TAG_HTTP
BASS_TAG_ICY = bass._BASS_TAG_ICY
BASS_TAG_META = bass._BASS_TAG_META
BASS_TAG_APE = bass._BASS_TAG_APE
BASS_TAG_MP4 = bass._BASS_TAG_MP4
BASS_TAG_VENDOR = bass._BASS_TAG_VENDOR
BASS_TAG_LYRICS3 = bass._BASS_TAG_LYRICS3
BASS_TAG_CA_CODEC = bass._BASS_TAG_CA_CODEC
BASS_TAG_MF = bass._BASS_TAG_MF
BASS_TAG_WAVEFORMAT = bass._BASS_TAG_WAVEFORMAT
BASS_TAG_RIFF_INFO = bass._BASS_TAG_RIFF_INFO
BASS_TAG_RIFF_BEXT = bass._BASS_TAG_RIFF_BEXT
BASS_TAG_RIFF_CART = bass._BASS_TAG_RIFF_CART
BASS_TAG_RIFF_CUE = bass._BASS_TAG_RIFF_CUE
BASS_TAG_RIFF_DISP = bass._BASS_TAG_RIFF_DISP
BASS_TAG_RIFF_SMPL = bass._BASS_TAG_RIFF_SMPL
BASS_TAG_APE_BINARY = bass._BASS_TAG_APE_BINARY
BASS_TAG_MUSIC_NAME = bass._BASS_TAG_MUSIC_NAME
BASS_TAG_MUSIC_MESSAGE = bass._BASS_TAG_MUSIC_MESSAGE
BASS_TAG_MUSIC_ORDERS = bass._BASS_TAG_MUSIC_ORDERS
BASS_TAG_MUSIC_INST = bass._BASS_TAG_MUSIC_INST
BASS_TAG_MUSIC_SAMPLE = bass._BASS_TAG_MUSIC_SAMPLE

BASS_POS_BYTE = bass._BASS_POS_BYTE
BASS_POS_MUSIC_ORDER = bass._BASS_POS_MUSIC_ORDER
BASS_POS_OGG = bass._BASS_POS_OGG
BASS_POS_INEXACT = bass._BASS_POS_INEXACT
BASS_POS_DECODE = bass._BASS_POS_DECODE
BASS_POS_DECODETO = bass._BASS_POS_DECODETO
BASS_POS_SCAN = bass._BASS_POS_SCAN
BASS_POS_RELATIVE = bass._BASS_POS_RELATIVE

@unique
class INPUT_TYPE(IntFlag):
  UNDEF = bass._BASS_INPUT_TYPE_UNDEF
  DIGITAL = bass._BASS_INPUT_TYPE_DIGITAL
  LINE = bass._BASS_INPUT_TYPE_LINE
  MIC = bass._BASS_INPUT_TYPE_MIC
  SYNTH = bass._BASS_INPUT_TYPE_SYNTH
  CD = bass._BASS_INPUT_TYPE_CD
  PHONE = bass._BASS_INPUT_TYPE_PHONE
  SPEAKER = bass._BASS_INPUT_TYPE_SPEAKER
  WAVE = bass._BASS_INPUT_TYPE_WAVE
  AUX = bass._BASS_INPUT_TYPE_AUX
  ANALOG = bass._BASS_INPUT_TYPE_ANALOG

BASS_DX8_PHASE_NEG_180 = bass._BASS_DX8_PHASE_NEG_180
BASS_DX8_PHASE_NEG_90 = bass._BASS_DX8_PHASE_NEG_90
BASS_DX8_PHASE_ZERO = bass._BASS_DX8_PHASE_ZERO
BASS_DX8_PHASE_90 = bass._BASS_DX8_PHASE_90
BASS_DX8_PHASE_180 = bass._BASS_DX8_PHASE_180

BASS_IOSNOTIFY_INTERRUPT = bass._BASS_IOSNOTIFY_INTERRUPT
BASS_IOSNOTIFY_INTERRUPT_END = bass._BASS_IOSNOTIFY_INTERRUPT_END
