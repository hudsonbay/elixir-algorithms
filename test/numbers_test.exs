defmodule NumbersTest do
  use ExUnit.Case
  doctest Numbers
  import Numbers

  test "digital root" do
    assert digital_root(16) == 7
    assert digital_root(456) == 6
  end

  # def testing_persistence(numtest, n, ans) do
  #   IO.puts("Test #{numtest}")
  #   assert persistence(n) == ans
  # end

  # test "persistence" do
  #   testing_persistence(1, 39, 3)
  #   testing_persistence(2, 4, 0)
  #   testing_persistence(3, 25, 2)
  #   testing_persistence(4, 999, 4)
  #   testing_persistence(5, 444, 3)
  # end
end
