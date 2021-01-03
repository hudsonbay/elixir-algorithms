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
    assert count_sheeps(
    [true,  true,  true,  false,
     true,  true,  true,  true ,
     true,  false, true,  false,
     true,  false, false, true]) == 11
  end
end
