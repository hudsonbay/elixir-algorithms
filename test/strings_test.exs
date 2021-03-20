defmodule StringsTest do
  use ExUnit.Case
  doctest Strings
  import Strings

  test "string ends with" do
    assert ends_with("abc", "bc") == true
    assert ends_with("abc", "d") == false
    assert ends_with("abc", "") == true
  end

  test "basic tests" do
    assert get_middle("test") == "es"
    assert get_middle("testing") == "t"
    assert get_middle("middle") == "dd"
    assert get_middle("A") == "A"
  end

  test "get_vowel_count" do
    assert get_vowel_count("abracadabra") == 5
  end

  # def run_test(s, sol), do: assert(capitalize(s) == sol)

  # describe "Capitalize given the string is" do
  #   test "abcdef", do: run_test("abcdef", ["AbCdEf", "aBcDeF"])
  #   test "codewars", do: run_test("codewars", ["CoDeWaRs", "cOdEwArS"])
  #   test "abracadabra", do: run_test("abracadabra", ["AbRaCaDaBrA", "aBrAcAdAbRa"])
  #   test "codewarriors", do: run_test("codewarriors", ["CoDeWaRrIoRs", "cOdEwArRiOrS"])
  # end

  test "Sample Tests" do
    assert reverse("world") == "dlrow"
  end

  test "calculates ngram" do
    assert ngram("Show me the code") == [
             "Show",
             "Show me",
             "Show me the",
             "Show me the code",
             "me",
             "me the",
             "me the code",
             "the",
             "the code",
             "code"
           ]

    assert ngram("My name is Manuel") == [
             "My",
             "My name",
             "My name is",
             "My name is Manuel",
             "name",
             "name is",
             "name is Manuel",
             "is",
             "is Manuel",
             "Manuel"
           ]
  end
end
