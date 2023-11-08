defmodule Tutorials.Lists do
  def sum([]), do: 0
  def sum([h | t]) do
    h + sum(t)
  end

  def sum_tail(nums, acc \\ 0)
  def sum_tail([], acc), do: acc
  def sum_tail([h | t], acc) do
    sum_tail(t, acc + h)
  end
end
