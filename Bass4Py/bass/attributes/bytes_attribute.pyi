from .attribute_base import AttributeBase

class BytesAttribute(AttributeBase):

  def get(self) -> bytes: ...
  def set(self, value: bytes) -> bool: ...
