defmodule Tutorials.Lists.Concat do
  def concat(src, dst), do: concat_func(src |> Enum.reverse(), dst)

  defp concat_func([], dst), do: dst
  defp concat_func([h | t], dst) do
    concat_func(t, [h | dst])
  end
end
