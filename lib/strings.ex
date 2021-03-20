defmodule Strings do
  @moduledoc """
  This module is to test strings-related algorithms
  """

  @doc """
  Complete the solution so that it returns true
  if the first argument(string) passed in ends with
  the 2nd argument (also a string).
  """
  def ends_with(str, ending) do
    String.ends_with?(str, ending)
  end

  @doc """
  Get the Middle Character

  You are going to be given a word. Your job is to return the
  middle character of the word. If the word's length is odd,
  return the middle character. If the word's length is even,
  return the middle 2 characters.
  """
  def get_middle(str) do
    len = String.length(str)

    case rem(len, 2) do
      1 -> String.at(str, div(len, 2))
      _ -> String.slice(str, div(len, 2) - 1, 2)
    end
  end

  @doc """
  Given a string, capitalize the letters that occupy even indexes
  and odd indexes separately, and return as shown below.
  Index 0 will be considered even.
  For example, capitalize("abcdef") = ['AbCdEf', 'aBcDeF']
  The input will be a lowercase string with no spaces.
  """

  # def capitalize(s) do
  #   splitted = String.split(s, "", trim: true)
  #   [h | t] = splitted

  #   [s, s]
  # end

  def proc([h | t]) do
    maj = String.capitalize(h)
    min = h
    [maj, min]
    proc(t)
  end

  def proc([]) do
    []
  end

  @vowels ~w[a i u e o]
  @doc """
  Return the number (count) of vowels in the given string.
  """

  # def get_vowel_count(str) do
  #   str
  #   |> String.split("", trim: true)
  #   |> Enum.count(fn x -> is_vowel(x) end)
  # end

  # defp is_vowel(letter) do
  #   letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u"
  # end

  def get_vowel_count(str) do
    str
    |> String.graphemes()
    |> Enum.count(&(&1 in @vowels))
  end

  # def get_vowel_count(str) do
  #   str
  #   |> String.to_charlist
  #   |> Enum.filter(&(Enum.member?('aeiou',&1)))
  #   |> Enum.count
  # end

  # def get_vowel_count(str) do
  #   str
  #   |> String.replace(~r/[^aeiou]/, "")
  #   |> String.length()
  # end

  # def get_vowel_count(str) do
  #   length(String.split(str, @vowels)) - 1
  # end

  # def get_vowel_count(str) do
  #   str |> String.to_charlist() |> Enum.count(&(&1 in 'aeiou'))
  # end

  # def get_vowel_count(str) do
  #   length(Regex.scan(~r/[aeoui]/, str))
  # end

  # def get_vowel_count(str) do
  #   Regex.scan(~r{[aeiou]}, str) |> Enum.count
  # end

  # def get_vowel_count(str) do
  #   String.downcase(str)
  #     |> String.graphemes
  #     |> Enum.filter(&(Enum.member?(@vowels, &1)))
  #     |> Enum.count
  # end

  @doc """
  Complete the solution so that it reverses the string passed into it.

  'world'  =>  'dlrow'
  """
  def reverse(string) do
    string
    |> String.graphemes()
    |> Enum.reverse()
    |> Enum.join()
  end

   @doc """
  Generates a set of every permutation of contiguous n-grams from a string of text,
  from 1-gram to n-grams where n is the number of words in the string
  """
  def ngram(str) do
    str
    |> String.trim()
    |> String.split(" ")
    |> create_list
  end

  @doc """
  Receives an array with all the words and creates the list to be shown
  """
  def create_list(str) do
    str
    |> remove_first
    # Creates a list of lists
    |> Enum.map(&String.split(&1, " "))
    |> Enum.map(&add_first/1)
    # Flattens the given list of nested lists.
    |> List.flatten()
  end

  @doc """
  Removes the head of the input list and inserts the tail into a new list
  """
  def remove_first(str) do
    Enum.map(0..(Enum.count(str) - 1), fn x ->
      str
      |> Enum.slice(x, Enum.count(str))
      |> Enum.join(" ")
    end)
  end

  @doc """
  Adds every head as a new element of a list
  """
  def add_first(substr) do
    Enum.map(1..Enum.count(substr), fn x ->
      substr
      |> Enum.slice(0, x)
      |> Enum.join(" ")
    end)
  end
end
