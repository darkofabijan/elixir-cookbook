defmodule Schizo do

  def uppercase(string) do
    transform_every_other_word(string, &uppercase_transformation/1)
  end

  def unvowel(string) do
    transform_every_other_word(string, &vowels_transformation/1)
  end

  defp transform_every_other_word(string, transformation_function) do
    words = String.split(string)

    words_with_index = Stream.with_index(words)

    transformed_words = Stream.map(words_with_index, transformation_function)

    Enum.join(transformed_words, " ")
  end

  defp uppercase_transformation({word, index}) do
    cond do
      rem(index, 2) == 0 -> word
      rem(index, 2) == 1 -> String.upcase(word)
    end
  end

  defp vowels_transformation({word, index}) do
    cond do
      rem(index, 2) == 0 -> word
      rem(index, 2) == 1 -> Regex.replace(%r/[aeiou]/, word, "")
    end
  end

end
