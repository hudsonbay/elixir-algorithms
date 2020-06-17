defmodule Mathematics do
    @moduledoc """
    This module is to store algorithms related to Maths, Algebra, Geometry and Arithmetic
    """

    @doc """
    Find the total sum of internal angles in an n-sided simple polygon. 
    N will be greater than 2.
    """
    def angle(n) when n > 2 do
        180 * (n - 2)
    end
end