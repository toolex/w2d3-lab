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

  def result_of_game(array, word, lives)
    if array.join("") == word
      return "You Win"
    elsif lives > 0
      p "Guess Again"
    elsif lives == 0
      return "You Lose"
    end

  end

end
