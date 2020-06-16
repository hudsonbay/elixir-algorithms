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
end