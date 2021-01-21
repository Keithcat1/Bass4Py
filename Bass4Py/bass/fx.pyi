from typing import Optional

from .._evaluable import _Evaluable
from .channel import Channel

class FX(_Evaluable):

  channel: Optional[Channel]
  
  def remove(self) -> bool: ...
  def reset(self) -> bool: ...
  def set(self, channel: Channel, update: bool = ...) -> None: ...
  def update(self) -> None: ...
  
  @property
  def priority(self) -> int: ...
  
  @priority.setter
  def priority(self, value: int) -> None: ...