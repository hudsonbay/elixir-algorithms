defmodule PacmanTest do
  use ExUnit.Case

  test "return true only if Pac-Man has a power pellet active and is touching a ghost" do
    assert Rules.eat_ghost?(false, true) == false
  end

  test "defines if Pacman scores" do
    assert Rules.score?(true, true) == true
  end

  test "test score?/2 score when eating dot" do
    assert Rules.score?(false, true) == true
  end

  test "defines if Pacman loses" do
    assert Rules.lose?(false, true) == true
  end

  test "test lose?/2 don't lose if touching a ghost with a power pellet active" do
    refute Rules.lose?(true, true) != false
  end

  test "defines if Pacman wins" do
    assert Rules.win?(false, true, false) == false
  end

  test "test win?/3 win if all dots eaten" do
    assert Rules.win?(true, false, false) == true
  end
end
