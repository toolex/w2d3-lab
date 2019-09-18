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
asterisk.push("*")  * word_length
end


  def letter_in_word(letter)
    return true if @word.include?(letter)
  end


end
