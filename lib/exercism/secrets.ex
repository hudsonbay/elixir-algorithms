defmodule Secrets do
  @moduledoc """
  https://exercism.org/tracks/elixir/exercises/secrets
  """
  @doc """
  It should return a function which takes
  one argument and adds to it the argument passed in to secret_add.
  """
  def secret_add(secret), do: fn arg -> arg + secret end

  @doc """
   It should return a function which takes one argument and subtracts
   from it the secret passed in to secret_subtract.
  """
  def secret_subtract(secret), do: &(&1 - secret)

  @doc """
  It should return a function which takes one argument and multiplies it
  by the secret passed in to secret_multiply.
  """
  def secret_multiply(secret), do: &(&1 * secret)

  @doc """
   It should return a function which takes one argument and divides it
   by the secret passed in to secret_divide.
  """
  def secret_divide(secret), do: &div(&1, secret)

  @doc """
  It should return a function which takes one argument and performs a bitwise
  and operation on it and the secret passed in to secret_and.
  """
  def secret_and(secret), do: &Bitwise.&&&(&1, secret)

  @doc """
  It should return a function which takes one argument and performs a bitwise xor
  operation on it and the secret passed in to secret_xor.
  """
  def secret_xor(secret), do: &Bitwise.^^^(&1, secret)

  @doc """
  It should return a function which takes one argument and applies to it the two functions
  passed in to secret_combine in order.
  """
  def secret_combine(secret_function1, secret_function2),
    do: &secret_function2.(secret_function1.(&1))
end
