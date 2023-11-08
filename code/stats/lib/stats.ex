defmodule Stats do
  alias Stats.CentralTendency.{Mean, Median, Mode}

  @spec population_mean([number() | nil]) :: number() | {atom(), String}
  defdelegate population_mean(nums), to: Mean

  @spec sample_mean([number() | nil]) :: number() | {atom(), String}
  defdelegate sample_mean(nums), to: Mean

  @spec median([number()]) :: number()
  defdelegate median(nums), to: Median

  defdelegate mode(nums), to: Mode
end
