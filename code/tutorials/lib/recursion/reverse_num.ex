defmodule Tutorial.Recursion.ReverseNum do
  def reverse_num(0, acc), do: acc
  def reverse_num(num, acc) do
    reverse_num(div(num, 10), (acc * 10) + rem(num, 10))
  end
end
