defmodule Tutorials.Lists.ReverseList do
  def of(nums, acc \\ [])
  def of([], acc), do: acc
  def of([h | t], acc) do
    of(t, [h] ++ acc) # also works --> of(t, [h | acc])
  end
end
