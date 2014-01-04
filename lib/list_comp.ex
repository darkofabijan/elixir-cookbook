defmodule ListComp do

  def squares(list) do
    lc x inlist list, do: x*x
  end

  def values_and_squares(list) do
    lc x inlist list, do: {x, x*x}
  end

  def squares_of_even(list) do
    lc x inlist list, rem(x,2) == 0, do: x*x
  end

  def combinations(a, b) do
    lc x inlist a, y inlist b, do: {x, y}
  end

end
