defmodule Fundamentals do
  @moduledoc """
  For algorithms to learn about the language
  """

  @doc """
  Number of people in the bus

  There is a bus moving in the city, and it takes and drop some
  people in each bus stop.
  You are provided with a list (or array) of integer arrays
  (or tuples). Each integer array has two items which represent
  number of people get into bus (The first item) and number of
  people get off the bus (The second item) in a bus stop.

  Your task is to return number of people who are still in the bus
  after the last bus station (after the last array). Even though it
  is the last bus stop, the bus is not empty and some people are
  still in the bus, and they are probably sleeping there :D

  Take a look on the test cases.

  Please keep in mind that the test cases ensure that the number of
  people in the bus is always >= 0. So the return integer can't be
  negative.

  The second value in the first integer array is 0, since the bus is
  empty in the first bus stop.
  """

  # def bus([h | t]) do
  #   {enter, leave} = h
  #   enter - leave + bus(t)
  # end

  # def bus([]), do: 0

  # def bus([{0, 0}]), do: 0

  @doc """
  Your task is to make a function that can take any non-negative integer as an argument and return it with
  its digits in descending order. Essentially, rearrange the digits to create the highest possible number.

  Examples:

  Input: 42145 Output: 54421

  Input: 145263 Output: 654321

  Input: 123456789 Output: 987654321
  """
  def descending_order(n) do
    Integer.digits(n)
    |> Enum.sort(&(&1 >= &2))
    |> Integer.undigits()

    # Solution 2
    # n
    #   |> Integer.to_string()
    #   |> String.graphemes()
    #   |> Enum.sort(&(&1 >= &2))
    #   |> Enum.join("")
    #   |> String.to_integer()

    # Solution 3
    #   Integer.digits(n)
    #   |> Enum.sort
    #   |> Enum.reverse
    #   |> Enum.join
    #   |> String.to_integer

    # Solution 4
    # n
    #   |> Integer.to_string()
    #   |> String.split("", trim: true)
    #   |> Enum.sort(&(&1 >= &2))
    #   |> Enum.join()
    #   |> String.to_integer()

    # Solution 5
    # n
    #     |> Integer.to_string
    #     |> String.graphemes
    #     |> Enum.sort
    #     |> Enum.reverse
    #     |> Enum.join
    #     |> String.to_integer
  end

  @doc """
  We need a function that can transform a number into a string.
  """
  def number_to_string(n), do: Integer.to_string(n)

  # def number_to_string(n) when is_number(n), do: "#{n}"

  # def number_to_string(n) do
  #   "#{n}"
  # end

  # def number_to_string(n) when is_float(n) do
  #   IO.puts(n)
  #   Float.to_string(n)
  # end
  # def number_to_string(n) when is_integer(n) do
  #   # return a string of the number here!
  #   # Integer.digits(n) |> Enum.join
  #   Integer.to_string(n)
  # end
end
