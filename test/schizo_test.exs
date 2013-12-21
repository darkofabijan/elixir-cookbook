defmodule SchizoTest do
  use ExUnit.Case

  test "uppercase doesn't change the first word" do
    assert(Schizo.uppercase("foo") == "foo")
  end

  test "uppercase uppercases every other word" do
    assert(Schizo.uppercase("foo bar") == "foo BAR")
  end

end
