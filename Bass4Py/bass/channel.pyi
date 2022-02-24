from typing import Literal, Optional, Tuple, Union, overload

from .attributes.bool_attribute import BoolAttribute
from .attributes.float_attribute import FloatAttribute
from .channel_base import ChannelBase
from .dsp import DSP
from .fx import FX
from .output_device import OutputDevice
from .sync import Sync
from .vector import Vector
from ..constants import POSITION

class Channel(ChannelBase):

  def get_tags(self, tag_type: int) -> Union[str, bytes]: ...
  def link(self, channel: Channel) -> bool: ...
  def play(self, restart: bool = ...) -> bool: ...
  def reset_fx(self) -> bool: ...
  def set_dsp(self, dsp: DSP) -> None: ...
  def set_fx(self, fx: FX) -> bool: ...
  @overload
  def set_position(self, pos: Tuple[int, int], mode: Literal[POSITION.MUSIC_ORDER], decodeto: bool = ..., flush: bool = ..., inexact: bool = ..., relative: bool = ..., reset: bool = ..., scan: bool = ..., posreset: bool = ..., posresetex: bool = ...) -> bool: ...
  @overload
  def set_position(self, pos: int, mode: int = ..., decodeto: bool = ..., flush: bool = ..., inexact: bool = ..., relative: bool = ..., reset: bool = ..., scan: bool = ..., posreset: bool = ..., posresetex: bool = ...) -> bool: ...
  def set_sync(self, sync: Sync) -> bool: ...
  def unlink(self, channel: Channel) -> bool: ...

  @property
  def loop(self) -> bool: ...

  @loop.setter
  def loop(self, value: bool) -> None: ...
  
  @property
  def device(self) -> Optional[OutputDevice]: ...
  
  @device.setter
  def device(self, value: Optional[OutputDevice]) -> None: ...
  
  @property
  def mode_3d(self) -> int: ...
  
  @mode_3d.setter
  def mode_3d(self, value: int) -> None: ...
  
  @property
  def minimum_distance(self) -> float: ...
  
  @minimum_distance.setter
  def minimum_distance(self, value: float) -> None: ...
  
  @property
  def maximum_distance(self) -> float: ...
  
  @maximum_distance.setter
  def maximum_distance(self, value: float) -> None: ...
  
  @property
  def angle(self) -> Tuple[int, int]: ...
  
  @angle.setter
  def angle(self, value: Tuple[int, int]) -> None: ...
  
  @property
  def outer_volume(self) -> float: ...
  
  @outer_volume.setter
  def outer_volume(self, value: float) -> None: ...
  
  @property
  def position_3d(self) -> Vector: ...
  
  @position_3d.setter
  def position_3d(self, value: Vector) -> None: ...
  
  @property
  def orientation_3d(self) -> Vector: ...
  
  @orientation_3d.setter
  def orientation_3d(self, value: Vector) -> None: ...
  
  @property
  def velocity_3d(self) -> Vector: ...
  
  @velocity_3d.setter
  def velocity_3d(self, value: Vector) -> None: ...

  @property
  def buffer(self) -> FloatAttribute: ...

  @property
  def cpu(self) -> FloatAttribute: ...

  @property
  def tail(self) -> FloatAttribute: ...

  @tail.setter
  def tail(self, value: float) -> None: ...

  @property
  def no_ramping(self) -> BoolAttribute: ...
