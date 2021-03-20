defmodule NgramTest do
  use ExUnit.Case
  doctest Ngram
  import Ngram

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
