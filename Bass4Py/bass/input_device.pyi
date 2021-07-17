from typing import Callable, Optional, Tuple

from ..evaluable import Evaluable
from ..constants import DEVICE_TYPE
from .input import Input
from .record import Record

class InputDevice(Evaluable):

  inputs: Tuple[Input]

  def free(self) -> bool: ...
  def init(self) -> bool: ...
  def record(self, freq: int = ..., chans: int = ..., flags: int = ..., callback: Optional[Callable[[Record, bytes], bool]] = ..., period: int = ...) -> Record: ...
  def set(self) -> bool: ...
  
  @property
  def name(self) -> str: ...
  
  @property
  def driver(self) -> str: ...
  
  @property
  def enabled(self) -> bool: ...
  
  @property
  def default(self) -> bool: ...
  
  @property
  def default_communication(self) -> bool: ...

  @property
  def initialized(self) -> bool: ...
  
  @property
  def loopback(self) -> bool: ...
  
  @property
  def type(self) -> DEVICE_TYPE: ...
  
  @property
  def flags(self) -> int: ...
  
  @property
  def formats(self) -> int: ...
  
  @property
  def channels(self) -> int: ...
  
  @property
  def single_input(self) -> bool: ...
  
  @property
  def frequency(self) -> int: ...
