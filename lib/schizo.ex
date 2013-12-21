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
    every_other_word({word, index}, &String.upcase/1)
  end

  defp vowels_transformation({word, index}) do
    func = fn (word) -> Regex.replace(%r/[aeiou]/, word, "") end

    every_other_word({word, index}, func)
  end

  defp every_other_word({word, index}, function) do
    cond do
      rem(index, 2) == 0 -> word
      rem(index, 2) == 1 -> function.(word)
    end
  end

end
