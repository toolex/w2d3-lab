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
    word_length = @word.length
    return "*" * word_length
  end

end
