defmodule ElixirTrainingTest do
  use ExUnit.Case
  doctest ElixirTraining

  test "greets the world" do
    assert ElixirTraining.hello() == :world
  end

  test "sum two numbers" do
    assert ElixirTraining.sum(1, 2) == 3
  end
end
