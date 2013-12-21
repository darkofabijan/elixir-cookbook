defmodule Schizo do

  def uppercase(string) do
    words = String.split(string)

    words_with_index = Stream.with_index(words)

    transformed_words = Stream.map(words_with_index, &transform/1)

    Enum.join(transformed_words, " ")
  end

  def unvowel(string) do
    words = String.split(string)

    words_with_index = Stream.with_index(words)

    transformed_words = Stream.map(words_with_index, &remove_vowels/1)

    Enum.join(transformed_words, " ")
  end

  defp transform({word, index}) do
    cond do
      rem(index, 2) == 0 -> word
      rem(index, 2) == 1 -> String.upcase(word)
    end
  end

  defp remove_vowels({word, index}) do
    cond do
      rem(index, 2) == 0 -> word
      rem(index, 2) == 1 -> Regex.replace(%r/[aeiou]/, word, "")
    end
  end

end
