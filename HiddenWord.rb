class HiddenWord

  attr_reader(:word)

  def initialize(word)
    @word = word
  end

  def word_exists
    return @word
  end

  def split_word()
    split_word = @word.split("")
    return split_word
  end

  def hide_word(word)
    asterisk = []
    word_length = @word.length
    hidden_array = asterisk.push("*")  * word_length
  end


  def letter_in_word(letter)
    return letter if @word.include?(letter)
  end

  # def letter_not_in_word(letter)
  #   if @word.exclude?(letter)
  #     then player_lives -= 1
  #     return player_lives
  # end

  def find_index(letter)
    return @word.index(letter)
  end

  def use_index_to_replace_letter(array, index_position, correct_guess)
    array[index_position] = correct_guess
    return array
  end

end
