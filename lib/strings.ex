defmodule Strings do
    @moduledoc """
    This module is to test strings-related algorithms
    """

    @doc """
    Complete the solution so that it returns true 
    if the first argument(string) passed in ends with 
    the 2nd argument (also a string). 
    """
    import Integer

    def ends_with(str, ending) do
        String.ends_with?(str, ending)
    end


    @doc """
    Get the Middle Character

    You are going to be given a word. Your job is to return the 
    middle character of the word. If the word's length is odd, 
    return the middle character. If the word's length is even, 
    return the middle 2 characters.
    """
    def get_middle(str) do
        len = String.length(str)
        unless Integer.is_odd(len) do
            String.slice(str, round(len/2 - 1), round(len/2))
        else
            String.at(str, round(len/2 - 1)) # is odd
        end
    end
end