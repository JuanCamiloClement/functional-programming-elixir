defmodule Tutorials.Lists.Map do
  @spec map([any()], (any() -> any()), [any()]) :: [any()]
  def map(elements, function, acc \\ [])
  def map([], _, acc), do: acc
  def map([h | t], function, acc) do
    map(t, function, acc ++ [function.(h)])
  end
end
