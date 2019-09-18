class HiddenWord

  attr_reader(:word)

  def initialize(word)
    @word = word
  end

  def word_exists
    return @word
  end

end
