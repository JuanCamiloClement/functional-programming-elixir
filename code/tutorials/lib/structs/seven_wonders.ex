defmodule Tutorials.Structs.SevenWonders do
  defstruct name: "", country: ""
  alias Tutorials.Structs.SevenWonders

  @type t :: %SevenWonders{
          name: String.t(),
          country: String.t()
        }

  @spec all :: [t()]
  def all do
    [
      %SevenWonders{name: "Taj Mahal", country: "India"},
      %SevenWonders{name: "Chichen Itza", country: "Mexico"},
      %SevenWonders{name: "Petra", country: "Jordan"},
      %SevenWonders{name: "Christ the Redeemer", country: "Brazil"},
      %SevenWonders{name: "Great Wall", country: "China"},
      %SevenWonders{name: "Machu Picchu", country: "Peru"},
      %SevenWonders{name: "Colosseum", country: "Italy"}
    ]
  end

  @spec print_names([t()]) :: :ok
  def print_names(wonders) do
    Enum.each(wonders, fn %{name: name} -> IO.puts(name) end)
  end

  @spec filter_by_country([t()], String.t()) :: [t()]
  def filter_by_country(wonders, country) do
    Enum.filter(wonders, fn %{country: country_name} -> country_name == country end)
  end

  @spec countries_starting_with_i([t()], String.t()) :: [t()]
  def countries_starting_with_i(wonders, start) do
    Enum.filter(wonders, fn %{country: country} -> String.starts_with?(country, start) end)
  end

  @spec sort_by_country_length([t()]) :: [t()]
  def sort_by_country_length(wonders) do
    Enum.sort(wonders, fn x, y -> String.length(x.country) < String.length(y.country) end)
  end

  def name_country_list(wonders) do
    Enum.reduce(wonders, [], fn wonder, acc -> [[wonder.name, wonder.country] | acc] end)
  end

  def country_name_keyword_list(wonders) do
    Enum.reduce(wonders, [], &[{String.to_atom(&1.country), &1.name} | &2])
    # Enum.reduce(wonders, [], fn wonder, acc ->
    #   [{String.to_atom(wonder.country), wonder.name} | acc]
    # end)
  end

  # For comprehension:
  def all_names(wonders) do
    # returns list with all the names
    for %{name: name} <- wonders, do: name
  end
end
