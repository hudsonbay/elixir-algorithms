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
  def bus(stops) do
    stops
    |> Enum.map(fn {enter, leave} -> enter - leave end)
    |> Enum.sum()
  end

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

  @doc """
  Given a random non-negative number,
  you have to return the digits of this number within an array in reverse order.
  """
  def digitize(n) when is_integer(n) do
    n
    |> Integer.digits()
    |> Enum.reverse()
  end

  @doc """
  Given an array of integers, return a new array with each value doubled.

  For example:

  [1, 2, 3] --> [2, 4, 6]

  For the beginner, try to use the map method - it comes in very handy quite a lot so is a good one to know.

  """
  def maps(x) do
    x
    |> Enum.map(fn x -> x * 2 end)
  end

  @doc """
  Write a function that returns a string in which firstname is swapped with last name.

  name_shuffler("john McClane"); => "McClane john"
  """
  def name_shuffler(str) do
    str
    |> String.split(" ")
    |> Enum.reverse()
    |> Enum.join(" ")
  end

  @doc """
  Clock shows h hours, m minutes and s seconds after midnight.

  Your task is to write a function which returns the time since midnight in milliseconds.
  Example:

  h = 0
  m = 1
  s = 1

  result = 61000

  Input constraints:

    0 <= h <= 23
    0 <= m <= 59
    0 <= s <= 59


  """
  def past(h, m, s) do
    :timer.hours(h) + :timer.minutes(m) + :timer.seconds(s)
  end

  @doc """
  It's pretty straightforward. Your goal is to create a function that removes the first and last characters of a string.
  You're given one parameter, the original string.
  You don't have to worry with strings with less than two characters.
  """
  def remove_chars(s) do
    s
    |> String.graphemes()
    |> Enum.slice(1..-2)
    |> Enum.join()
  end

  @doc """
  Simple, remove the spaces from the string, then return the resultant string.
  """
  def no_space(x) do
    x
    |> String.replace(" ", "")
  end

  @doc """
  You are given two interior angles (in degrees) of a triangle.
  Write a function to return the 3rd.
  Note: only positive integers will be tested.
  """
  def other_angle(a, b) do
    180 - (a + b)
  end

  @doc """
  write me a function stringy that takes a size and returns a string of alternating '1s' and '0s'.
  the string should start with a 1.
  a string with size 6 should return :'101010'.
  with size 4 should return : '1010'.
  with size 12 should return : '101010101010'.
  The size will always be positive and will only use whole numbers.
  """
  def stringy(size) do
    Enum.map(1..size, fn _ -> [1, 0] end)
    |> List.flatten()
    |> Enum.take(size)
    |> Enum.join()
  end

  # def stringy(size) do
  #   Stream.cycle([1,0])
  #   |> Enum.take(size)
  #   |> Enum.join
  # end

  # def stringy(size) do
  #   '10' |> Stream.cycle() |> Enum.take(size) |> List.to_string
  # end

  # def stringy(size) do
  #   List.to_string(for n <- 1..size, do: Integer.to_string(rem(n,2)))
  # end

  # def stringy(size) do
  #   "10"
  #   |> String.duplicate(size)
  #   |> String.slice(0..size - 1)
  # end

  # def stringy(size) do
  #   ["1", "0"]
  #   |> Stream.cycle
  #   |> Enum.take(size)
  #   |> Enum.join
  # end

  # def stringy(size) do
  #   1..size
  #   |> Enum.map(fn(n) -> rem(n, 2) end)
  #   |> Enum.join("")
  # end

  # def stringy(size), do: Enum.map(1..size, & rem(&1,2) == 0 && "0" || "1") |> Enum.join("")

  @doc """
  Write a program that finds the summation of every number from 1 to num. The number
  will always be a positive integer greater than 0.

  For example:

  summation(2) -> 3
  1 + 2

  summation(8) -> 36
  1 + 2 + 3 + 4 + 5 + 6 + 7 + 8
  """
  def summation(0), do: 0
  def summation(1), do: 1
  def summation(n), do: n + summation(n - 1)

  # def summation(n) do
  #   1..n |> Enum.sum
  # end
end
