defmodule FundamentalsTest do
  use ExUnit.Case
  import Fundamentals

  # test "returns 0 for a bus without stops" do
  #   assert bus([]) == 0
  #   assert bus([{0, 0}]) == 0
  # end

  # test "works for a bus with stops" do
  #   assert bus([{10, 0}, {3, 5}, {5, 8}]) == 5
  #   assert bus([{3, 0}, {9, 1}, {4, 10}, {12, 2}, {6, 1}, {7, 10}]) == 17
  #   assert bus([{3, 0}, {9, 1}, {4, 8}, {12, 2}, {6, 1}, {7, 8}]) == 21
  # end

  test "Sample tests" do
    Enum.each(
      [
        {0, 0},
        {123_456_789, 987_654_321},
        {567_821, 876_521},
        {55672, 76552},
        {1_231_293_922, 9_933_222_211}
      ],
      fn {n, expected} ->
        actual = Fundamentals.descending_order(n)
        assert actual == expected
      end
    )
  end

  test "turns number into string" do
    assert number_to_string(67) == "67"
  end
end
