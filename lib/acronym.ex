defmodule Acronym do
  @doc """
  Generate an acronym from a string.
  "This is a string" => "TIAS"

  ## Examples
    iex> Acronym.abbreviate("Something - I made up from thin air")
    "SIMUFTA"
  """
  @spec abbreviate(String.t()) :: String.t()
  def abbreviate(string) do
    Regex.replace(~r/[-_]/, string, " ")
    |> String.split()
    |> Enum.map(&(String.at(&1, 0) |> String.upcase()))
    |> Enum.join()
  end
end
