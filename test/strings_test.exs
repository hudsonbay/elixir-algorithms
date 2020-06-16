defmodule StringsTest do
    use ExUnit.Case
    doctest Strings
    import Strings

    test "string ends with" do
        assert ends_with("abc", "bc") == true
        assert ends_with("abc", "d") == false
        assert ends_with("abc", "") == true
    end
end