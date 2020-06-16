defmodule Strings do
    @moduledoc """
    This module is to test strings-related algorithms
    """

    @doc """
    Complete the solution so that it returns true 
    if the first argument(string) passed in ends with 
    the 2nd argument (also a string). 
    """
    def ends_with(str, ending) do
        String.ends_with?(str, ending)
    end
end