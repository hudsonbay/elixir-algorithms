defmodule Lists do
  @moduledoc """
  This module is to test list-related algorithms
  """

  @doc """
      Reverse a list

      ## Examples:
      iex> Lists.reverse_list([1,2,3,4])
      [4,3,2,1]
  """
  def reverse_list(list) do
    Enum.reverse(list)
  end

  @doc """
  Iterate through a list of numbers and show them
  """
  def iterate_and_show(list) do
    Enum.map(list, fn x -> x end)
  end

  @doc """
  Iterate through a list of numbers, multiply them by 2 and show them
  """
  def multiply_by_2(list) do
    Enum.map(list, fn x -> 2 * x end)
  end

  @doc """
  The two oldest ages function/method needs to be completed. It should take an array of
  numbers as its argument and return the two highest numbers within the array. The returned
  value should be an array in the format [second oldest age, oldest age].

  The order of the numbers passed in could be any order. The array will always include
  at least 2 items.
  """
  def two_oldest_ages(ages_list) do
    MapSet.new(ages_list) |> Enum.sort(:asc) |> Enum.take(-2)
  end

  @doc """
  Sums all the elements of a list
  """
  def sum_elements(list) do
    Enum.map(list, fn x -> x + x end)
  end

  @doc """
  Consider an array/list of sheep where some sheep may be missing from their place.
  We need a function that counts the number of sheep present in the array (true means present).
  """
  def count_sheeps(sheeps) do
    Enum.count(sheeps, fn x -> x == true end)
    # Enum.count(sheeps, &(&1))
    # Enum.count(sheeps, fn(x) -> x end)
  end

  @doc """
  Given a non-empty array of integers, return the result of multiplying the values
  together in order. Example:

  [1, 2, 3, 4] => 1 * 2 * 3 * 4 = 24
  """
  def grow([]), do: 1
  def grow([h | t]), do: h * grow(t)

  # def grow(arr) do
  #   Enum.reduce(arr, fn x, acc -> x * acc end)
  # end

  def sum([]), do: 0
  def sum([h | t]), do: h + sum(t)

  @doc """
  Create a function with two arguments that will return an array of
  the first (n) multiples of (x).
  Assume both the given number and the number of times to count will
  be positive numbers greater than 0.

  Return the results as an array.

  Examples:
  count_by(1, 10) == [1,2,3,4,5,6,7,8,9,10]
  count_by(2, 5) == [2,4,6,8,10]
  """
  def count_by(x, n) do
    Enum.map(1..n, fn elem -> x * elem end)
  end

  @doc """
  Removes the left-most duplicates from a list of integers and return the result.
  """

  # def remove_duplicates(list) do

  # end

  @doc """
  Moves all the zeros from a list to the end of it
  """
  def move_zeros(arr) do
    filtered_list = arr |> Enum.filter(fn x -> x != 0 end)

    items_left = Enum.count(arr) - Enum.count(filtered_list)

    case items_left != 0 do
      false ->
        filtered_list

      true ->
        Enum.reduce(1..items_left, filtered_list, fn _, acc -> List.insert_at(acc, -1, 0) end)
    end
  end

  @doc """
  Reverse and invert all integer values in a given list.
  """
  def reverse_invert(lst) do
    lst
    |> Enum.filter(&is_integer/1)
    |> Enum.map(fn number ->
      -number |> Integer.digits() |> Enum.reverse() |> Integer.undigits()
    end)
  end
end
