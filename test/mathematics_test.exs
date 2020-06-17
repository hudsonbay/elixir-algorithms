defmodule MathematicsTest do
    use ExUnit.Case
    import Mathematics

    defp tester(n, exp) do
        act = angle n
        assert act == exp, "Input #{n}, expected #{exp}, got #{act}"
      end
    
      test "basic tests" do
        tester 3, 180
        tester 4, 360
      end 
end