defmodule Numbers do
  @moduledoc """
  A module that implements functions related to numbers
  """

  @doc """
  Digital root is the recursive sum of all the digits in a number.

  Given n, take the sum of the digits of n. If that value has more than one digit,
  continue reducing in this way until a single-digit number is produced.
  The input will be a non-negative integer.

  Examples
    16  -->  1 + 6 = 7
   942  -->  9 + 4 + 2 = 15  -->  1 + 5 = 6
  132189  -->  1 + 3 + 2 + 1 + 8 + 9 = 24  -->  2 + 4 = 6
  493193  -->  4 + 9 + 3 + 1 + 9 + 3 = 29  -->  2 + 9 = 11  -->  1 + 1 = 2
  """

  # def digital_root(n) do
  #   case is_single_digit(n) do
  #     true ->
  #       n

  #     false ->
  #       n
  #       |> Integer.digits()
  #       |> Enum.reduce(0, fn x, acc -> x + acc end)
  #       |> digital_root()
  #   end
  # end

  # defp is_single_digit(n) when is_integer(n) do
  #   case Integer.digits(n) |> Enum.count() do
  #     1 -> true
  #     _ -> false
  #   end
  # end

  # def digital_root(n), do: rem(n - 1, 9) + 1

  # def digital_root(n) when n < 10, do: n

  # def digital_root(n) do
  #   list = Integer.digits(n)
  #   digital_root(Enum.sum(list))
  # end

  # def digital_root(n) do
  #   if length(Integer.digits(n)) > 1 do
  #     n = Enum.sum(Integer.digits(n))
  #     digital_root(n)
  #   else
  #     n
  #   end
  # end

  def digital_root(n) when n < 10, do: n
  def digital_root(n), do: Integer.digits(n) |> Enum.sum() |> digital_root

  @doc """
  Write a function, persistence, that takes in a positive parameter num and
  returns its multiplicative persistence, which is the number of times you must
  multiply the digits in num until you reach a single digit.

  For example:
  persistence(39) # returns 3, because 3*9=27, 2*7=14, 1*4=4
                 # and 4 has only one digit

  persistence(999) # returns 4, because 9*9*9=729, 7*2*9=126,
                  # 1*2*6=12, and finally 1*2=2

  persistence(4) # returns 0, because 4 is already a one-digit number
  """

  # def persistence(n) do

  #   # Enum.reduce(1..10, counter, fn _, acc -> acc + 1 end)
  #  counter = 0

  #  n
  #  |> Integer.digits()
  #  |> Enum.product()
  # end

  def factorial(0), do: 1
  def factorial(n) when n > 0, do: n * factorial(n - 1)
end
