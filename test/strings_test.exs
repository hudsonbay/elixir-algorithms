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
        assert get_middle("middle") =="dd"
        assert get_middle("A") == "A"
    end
end