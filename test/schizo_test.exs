defmodule SchizoTest do
  use ExUnit.Case

  test "uppercase doesn't change the first word" do
    assert(Schizo.uppercase("foo") == "foo")
  end

  test "uppercase uppercases every other word" do
    assert(Schizo.uppercase("foo bar") == "foo BAR")
  end

  test "unvowel doesn't change the first word" do
    assert(Schizo.uppercase("foo") == "foo")
  end

  test "unvowel removes the second word's vowels" do
    assert(Schizo.unvowel("foo bar") == "foo br")
  end

  test "unvowel removes every other word's vowels" do
    assert(Schizo.unvowel("foo bar joo maa") == "foo br joo m")
  end

end
