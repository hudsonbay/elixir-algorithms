defmodule Ngram do
    @doc """
  Generates a set of every permutation of contiguous n-grams from a string of text,
  from 1-gram to n-grams where n is the number of words in the string
  """
  def ngram(str) do
    str
    |> String.trim()
    |> String.split(" ")
    |> create_list
  end

  @doc """
  Receives an array with all the words and creates the list to be shown
  """
  def create_list(str) do
    str
    |> remove_first
    # Creates a list of lists
    |> Enum.map(&String.split(&1, " "))
    |> Enum.map(&add_first/1)
    # Flattens the given list of nested lists.
    |> List.flatten()
  end

  @doc """
  Removes the head of the input list and inserts the tail into a new list
  """
  def remove_first(str) do
    Enum.map(0..(Enum.count(str) - 1), fn x ->
      str
      |> Enum.slice(x, Enum.count(str))
      |> Enum.join(" ")
    end)
  end

  @doc """
  Adds every head as a new element of a list
  """
  def add_first(substr) do
    Enum.map(1..Enum.count(substr), fn x ->
      substr
      |> Enum.slice(0, x)
      |> Enum.join(" ")
    end)
  end
end
