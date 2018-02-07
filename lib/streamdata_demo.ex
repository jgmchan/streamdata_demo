defmodule StreamdataDemo do
  def biggest([h | t]), do: biggest(t, h)
  def biggest([], biggest), do: biggest
  def biggest([h | t], biggest) when h > biggest, do: biggest(t, h)
  def biggest([h | t], biggest) when h < biggest, do: biggest(t, biggest)
end
