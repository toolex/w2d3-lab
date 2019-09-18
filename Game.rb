class Game

  # attr_accessor(:guesses)

  def initialize()

    @guesses = []

  end

  def total_guesses
    return @guesses.length
  end

  def add_guessed_letter(letter)
    @guesses.push(letter)
  end

  def has_letter_been_guessed(letter)
    return true if @guesses.include?(letter)
  end

end
