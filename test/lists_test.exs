defmodule ListsTest do
  use ExUnit.Case
  doctest Lists
  import Lists

  test "should reverse the list" do
    assert reverse_list(["a", "b", "c", "d"]) == ["d", "c", "b", "a"]
  end

  test "multiply list by two" do
    assert multiply_by_2([1, 2, 3, 4, 5]) == [2, 4, 6, 8, 10]
  end

  test "should return 18 and 83 for input [6,5,83,5,3,18]" do
    assert two_oldest_ages([6, 5, 83, 5, 3, 18]) == [18, 83]
  end

  test "should return 45 and 87 for input [1,5,87,45,8,8]" do
    assert two_oldest_ages([1, 5, 87, 45, 8, 8]) == [45, 87]
  end

  test "should sum all elements for input [1,2,3,4]" do
    assert sum_elements([1, 2, 3, 4])
  end

  test "should count all the sheeps in the list" do
    assert count_sheeps([]) == 0
    assert count_sheeps([true]) == 1
    assert count_sheeps([true, false]) == 1
    assert count_sheeps([false, false]) == 0

    assert count_sheeps([
             true,
             true,
             true,
             false,
             true,
             true,
             true,
             true,
             true,
             false,
             true,
             false,
             true,
             false,
             false,
             true
           ]) == 11
  end

  defp grow(arr, exp) do
    actual = grow(arr)

    assert actual == exp,
           "Given list #{inspect(arr, charlists: :as_lists)}, expecteed #{exp}, got #{actual}"
  end

  test "grow" do
    grow([1, 2, 3], 6)
    grow([4, 1, 1, 1, 4], 16)
    grow([2, 2, 2, 2, 2, 2], 64)
  end

  test "count by" do
    assert count_by(1, 5) == [1, 2, 3, 4, 5]
    assert count_by(2, 5) == [2, 4, 6, 8, 10]
  end

  test "move zeros" do
    assert move_zeros([false, 1, 0, 1, 2, 0, 1, 3, "a"]) == [false, 1, 1, 2, 1, 3, "a", 0, 0]
    assert move_zeros([false, 1, 1, 2, 1, 3, "a"]) == [false, 1, 1, 2, 1, 3, "a"]
  end

  test "reverses and invert all integer values in a given list." do
    assert reverse_invert([]) == []
    assert reverse_invert([1, 2, 3, 4, 5]) == [-1, -2, -3, -4, -5]
    assert reverse_invert([-10]) == [1]
    assert reverse_invert([-9, -18, 99]) == [9, 81, -99]
    assert reverse_invert([1, 12, 'a', 3.4, 87, 99.9, -42, 50, 5.6]) == [-1, -21, -78, 24, -5]
  end
end
