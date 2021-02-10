from typing import Any, Callable, Optional, Union

from ..constants import DEVICE, DEVICE_TYPE
from ..evaluable import Evaluable
from .music import Music
from .sample import Sample
from .stream import Stream
from .vector import Vector

class OutputDevice(Evaluable):

  def create_music_from_bytes(self, data: bytes, flags: int = ..., length: int = ..., device_frequency: bool = ...) -> Music: ...
  def create_music_from_file(self, filename: Union[str, bytes], flags: int = ..., offset: int = ..., device_frequency: bool = ...) -> Music: ...
  def create_sample_from_bytes(self, data: bytes, max: int = ..., flags: int = ..., length: int = ...) -> Sample: ...
  def create_sample_from_file(self, filename: Union[str, bytes], max: int = ..., flags: int = ..., offset: int = ...) -> Sample: ...
  def create_sample_from_parameters(self, length: int, freq: int, chans: int, max: int = ..., flags: int = ...) -> Sample: ...
  def create_stream(self) -> Stream: ...
  def create_stream_3d(self) -> Stream: ...
  def create_stream_from_bytes(self, data: bytes, flags: int = ..., length: int = ...) -> Stream: ...
  def create_stream_from_file(self, filename: Union[str, bytes], flags: int = ..., offset: int = ...) -> Stream: ...
  def create_stream_from_file_obj(self, obj: Any, system: int = ..., flags: int = ...) -> Stream: ...
  def create_stream_from_parameters(self, freq: int, chans: int, flags: int = ..., callback: Optional[Callable[[Stream, int], bytes]] = ...) -> Stream: ...
  def create_stream_from_url(self, url: Union[str, bytes], flags: int = ..., offset: int = ..., callback: Optional[Callable[[Stream, bytes], None]] = ...) -> Stream: ...
  def eax_preset(self, preset: int) -> None: ...
  def free(self) -> bool: ...
  def init(self, freq: int, flags: int, win: int) -> bool: ...
  def pause(self) -> bool: ...
  def set(self) -> bool: ...
  def start(self) -> bool: ...
  def stop(self) -> bool: ...
  
  @property
  def name(self) -> str: ...
  
  @property
  def driver(self) -> str: ...
  
  @property
  def enabled(self) -> bool: ...
  
  @property
  def default(self) -> bool: ...
  
  @property
  def initialized(self) -> bool: ...
  
  @property
  def type(self) -> Optional[DEVICE_TYPE]: ...
  
  @property
  def flags(self) -> int: ...
  
  @property
  def memory(self) -> int: ...
  
  @property
  def memory_free(self) -> int: ...
  
  @property
  def free_samples(self) -> int: ...
  
  @property
  def free_3d(self) -> int: ...
  
  @property
  def minimum_rate(self) -> int: ...
  
  @property
  def maximum_rate(self) -> int: ...
  
  @property
  def eax(self) -> bool: ...
  
  @property
  def direct_x(self) -> int: ...
  
  @property
  def buffer(self) -> int: ...
  
  @property
  def latency(self) -> int: ...
  
  @property
  def init_flags(self) -> DEVICE: ...
  
  @property
  def speakers(self) -> int: ...
  
  @property
  def frequency(self) -> int: ...
  
  @property
  def volume(self) -> float: ...
  
  @volume.setter
  def volume(self, value: float) -> None: ...
  
  @property
  def position_3d(self) -> Vector: ...
  
  @position_3d.setter
  def position_3d(self, value: Vector) -> None: ...
  
  @property
  def velocity_3d(self) -> Vector: ...
  
  @velocity_3d.setter
  def velocity_3d(self, value: Vector) -> None: ...
  
  @property
  def front_3d(self) -> Vector: ...
  
  @front_3d.setter
  def front_3d(self, value: Vector) -> None: ...
  
  @property
  def top_3d(self) -> Vector: ...
  
  @top_3d.setter
  def top_3d(self, value: Vector) -> None: ...
  
  @property
  def distance(self) -> float: ...
  
  @distance.setter
  def distance(self, value: float) -> None: ...
  
  @property
  def rolloff(self) -> float: ...
  
  @rolloff.setter
  def rolloff(self, value: float) -> None: ...
  
  @property
  def doppler(self) -> float: ...
  
  @doppler.setter
  def doppler(self, value: float) -> None: ...
  
  @property
  def eax_environment(self) -> float: ...
  
  @eax_environment.setter
  def eax_environment(self, value: float) -> None: ...
  
  @property
  def eax_volume(self) -> float: ...
  
  @eax_volume.setter
  def eax_volume(self, value: float) -> None: ...
  
  @property
  def eax_decay(self) -> float: ...
  
  @eax_decay.setter
  def eax_decay(self, value: float) -> None: ...

  @property
  def eax_damping(self) -> float: ...
  
  @eax_damping.setter
  def eax_damping(self, value: float) -> None: ...
  
  @property
  def started(self) -> bool: ...
