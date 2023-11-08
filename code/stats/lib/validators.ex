defmodule Stats.Validators do
  alias Stats.Errors

  @spec validate_nums_list([number()]) :: {boolean(), [number()]} | {atom(), String.t()}
  def validate_nums_list(nums) when is_list(nums) do
    {Enum.all?(nums, &is_number(&1)), nums}
    # {Enum.all?(nums, fn element -> is_number(element) end), nums}
  end

  def validate_nums_list(_), do: Errors.invalid_data_type()
end
