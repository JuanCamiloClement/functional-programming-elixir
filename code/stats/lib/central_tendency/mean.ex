defmodule Stats.CentralTendency.Mean do
  alias Stats.{Errors, Validators}

  @spec population_mean([number() | nil]) :: number() | {atom(), String}
  def population_mean([]), do: Errors.invalid_data_type()

  def population_mean(nums) when is_list(nums) do
    nums
    |> Validators.validate_nums_list()
    |> calculate_population_mean
  end

  def population_mean(_), do: Errors.invalid_data_type()

  @spec sample_mean([number() | nil]) :: number() | {atom(), String}
  def sample_mean(nums), do: population_mean(nums)

  @spec calculate_population_mean({boolean(), [number()]}) :: number() | {atom(), String}
  defp calculate_population_mean({false, _}), do: Errors.invalid_data_type()

  defp calculate_population_mean({true, nums}) do
    nums
    |> Enum.sum()
    |> mean(Enum.count(nums))
  end

  @spec mean(number(), number()) :: number()
  defp mean(sigma, count), do: sigma / count
end
