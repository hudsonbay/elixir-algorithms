defmodule SecretsTest do
  use ExUnit.Case

  test "Create an adder" do
    adder = Secrets.secret_add(2)
    assert adder.(2) == 4
  end

  test "create a substractor" do
    subtractor = Secrets.secret_subtract(2)
    assert subtractor.(3) == 1
  end

  test "create a multiplier" do
    multiplier = Secrets.secret_multiply(7)
    assert multiplier.(3) == 21
  end

  test "create a divider" do
    divider = Secrets.secret_divide(3)
    assert divider.(32) == 10
  end

  test "Create an and-er" do
    ander = Secrets.secret_and(1)
    assert ander.(2) == 0
  end

  test "Create an xor-er" do
    xorer = Secrets.secret_xor(1)
    assert xorer.(3) == 2
  end

  test "create a combiner" do
    multiply = Secrets.secret_multiply(7)
    divide = Secrets.secret_divide(3)
    combined = Secrets.secret_combine(multiply, divide)
    assert combined.(6) === 14
  end

  test "test secret_combine 5 add 10 then subtract 5" do
    f = Secrets.secret_add(10)
    g = Secrets.secret_subtract(5)
    h = Secrets.secret_combine(f, g)
    assert h.(5) === 10
  end

  test "test secret_combine 100 multiply by 2 then subtract 20" do
    f = Secrets.secret_multiply(2)
    g = Secrets.secret_subtract(20)
    h = Secrets.secret_combine(f, g)
    assert h.(100) === 180
  end

  test "test secret_combine 100 divide by 10 then add 20" do
    f = Secrets.secret_add(10)
    g = Secrets.secret_subtract(5)
    h = Secrets.secret_combine(f, g)
    assert h.(5) === 10
  end

  test "test secret_combine 32 divide by 3 then multiply 5" do
    f = Secrets.secret_divide(3)
    g = Secrets.secret_add(5)
    h = Secrets.secret_combine(f, g)
    assert h.(32) === 15
  end

  test "test secret_combine 7 and 3 then and 5" do
    f = Secrets.secret_and(3)
    g = Secrets.secret_and(5)
    h = Secrets.secret_combine(f, g)
    assert h.(7) === 1
  end

  test "test secret_combine 81 divide by 9 then and 7" do
    f = Secrets.secret_divide(9)
    g = Secrets.secret_and(7)
    h = Secrets.secret_combine(f, g)
    assert h.(81) === 1
  end
end
