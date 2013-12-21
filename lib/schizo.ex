defmodule Schizo do

  def uppercase(string) do
    string

    words = String.split(string)

    words_with_index = Stream.with_index(words)

    transformed_words = Stream.map(words_with_index, &transform/1)

    Enum.join(transformed_words, " ")
  end

  defp transform({word, index}) do
    cond do
      rem(index, 2) == 0 -> word
      rem(index, 2) == 1 -> String.upcase(word)
    end
  end



end
