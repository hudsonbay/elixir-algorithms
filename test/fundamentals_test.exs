defmodule FundamentalsTest do
  use ExUnit.Case
  import Fundamentals

  test "returns 0 for a bus without stops" do
    assert bus([]) == 0
    assert bus([{0, 0}]) == 0
  end

  test "works for a bus with stops" do
    assert bus([{10, 0}, {3, 5}, {5, 8}]) == 5
    assert bus([{3, 0}, {9, 1}, {4, 10}, {12, 2}, {6, 1}, {7, 10}]) == 17
    assert bus([{3, 0}, {9, 1}, {4, 8}, {12, 2}, {6, 1}, {7, 8}]) == 21
  end

  test "Sample tests" do
    Enum.each(
      [
        {0, 0},
        {123_456_789, 987_654_321},
        {567_821, 876_521},
        {55_672, 76_552},
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

  test "digitize" do
    assert digitize(35_231) == [1, 3, 2, 5, 3]
  end

  defp testing(x, exp) do
    actual = Fundamentals.maps(x)

    msg = """
    Given list: #{inspect(x, charlists: :as_lists)}
    expected: #{inspect(exp, charlists: :as_lists)}
    got: #{inspect(actual, charlists: :as_lists)}
    """

    assert actual == exp, msg
  end

  test "fixed tests" do
    testing([1, 2, 3], [2, 4, 6])
    testing([4, 1, 1, 1, 4], [8, 2, 2, 2, 8])
    testing([2, 2, 2, 2, 2, 2], [4, 4, 4, 4, 4, 4])
  end

  test "shuffle names" do
    assert name_shuffler("john McClane") == "McClane john"
    assert name_shuffler("Mary jeggins") == "jeggins Mary"
    assert name_shuffler("tom jerry") == "jerry tom"
  end

  test "basic tests" do
    assert past(0, 1, 1) == 61_000
    assert past(1, 1, 1) == 3_661_000
    assert past(0, 0, 0) == 0
    assert past(1, 0, 1) == 3_601_000
    assert past(1, 0, 0) == 3_600_000
  end

  test "basic test" do
    assert remove_chars("eloquent") == "loquen"
    assert remove_chars("country") == "ountr"
    assert remove_chars("person") == "erso"
    assert remove_chars("place") == "lac"
    assert remove_chars("ok") == ""
  end

  test "remove spaces" do
    assert no_space("8 j 8   mBliB8g  imjB8B8  jl  B") == "8j8mBliB8gimjB8B8jlB"
  end

  test "other_angle" do
    assert other_angle(30, 60) == 90
    assert other_angle(60, 60) == 60
    assert other_angle(43, 78) == 59
    assert other_angle(10, 20) == 150
  end

  test "basic cases" do
    assert stringy(3) == "101"
    assert stringy(5) == "10101"
    assert stringy(12) == "101010101010"
    assert stringy(26) == "10101010101010101010101010"
    assert stringy(28) == "1010101010101010101010101010"
  end

  test "returns the correct total" do
    assert summation(1) == 1
    assert summation(8) == 36
  end
end
