defmodule ListCompTest do
  use ExUnit.Case

  test "squares returns squares of given list" do
    assert(ListComp.squares([1, 2, 3]) == [1, 4, 9])
  end

  test "values_and_squares returns list of tuples containing given values and squares" do
    assert(ListComp.values_and_squares([1, 2, 3]) == [{1,1}, {2,4}, {3,9}])
  end

  test "squares_of_even returns squres of even values" do
    assert(ListComp.squares_of_even([1, 2, 3, 4]) == [4, 16])
  end

  test "combinations returns of combinations of two lists" do
    assert(ListComp.combinations([:a, :b], [1, 2]) == [{:a, 1}, {:a, 2}, {:b, 1} , {:b, 2}])
  end

  test "combinations returns of combinations of two lists" do
    assert(ListComp.combinations([:a], [1, 2]) == [{:a, 1}, {:a, 2}])
  end

end
