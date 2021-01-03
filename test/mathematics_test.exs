defmodule MathematicsTest do
  use ExUnit.Case
  import Mathematics

  defp tester(n, exp) do
    act = angle(n)
    assert act == exp, "Input #{n}, expected #{exp}, got #{act}"
  end

  test "basic tests" do
    tester(3, 180)
    tester(4, 360)
  end

  # test "series sum" do
  #   assert series_sum(0) == "0.00"
  #   assert series_sum(1) == "1.00"
  #   assert series_sum(2) == "1.25"
  #   assert series_sum(3) == "1.39"
  #   assert series_sum(4) == "1.49"
  #   assert series_sum(5) == "1.57"
  # end
end
