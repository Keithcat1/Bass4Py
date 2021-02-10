from typing import Callable, Optional

from ..evaluable import Evaluable
from .channel import Channel

class DSP(Evaluable):

  channel: Channel
  
  def remove(self) -> bool: ...
  def set(self, channel: Channel) -> None: ...
  
  @property
  def priority(self) -> int: ...
  
  @priority.setter
  def priority(self, value: int) -> None: ...
  
  @property
  def callback(self) -> Optional[Callable[[DSP, bytes], bytes]]: ...
  
  @callback.setter
  def callback(self, value: Callable[[DSP, bytes], bytes]) -> None: ...
