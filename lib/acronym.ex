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
    string
    |> String.split()
    |> Enum.map(fn str -> String.at(str, 0) end)
    |> Enum.join()
  end
end
