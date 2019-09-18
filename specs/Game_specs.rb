require("minitest/autorun")
require("minitest/rg")
require_relative("../Game")
require_relative("../Player")
require_relative("../HiddenWord")

class TestGame < MiniTest::Test

  def setup

    @game = Game.new

    @word = HiddenWord.new("snowman")

    @player1 = Player.new("Bob", 6)
    @player2 = Player.new("Jim", 0)

  end

  def test_player_has_name
    assert_equal("Bob", @player1.name)
  end

  def test_word_exists
    assert_equal("snowman", @word.word_exists)
  end

  def test_start_guesses_empty
    assert_equal(0, @game.total_guesses)
  end

  def test_add_guessed_letter
    @game.add_guessed_letter("g")
    assert_equal(1, @game.total_guesses)
  end

  def test_has_letter_been_guessed()
    @game.add_guessed_letter("g")
    assert_equal(true, @game.has_letter_been_guessed("g"))
  end

  def test_player_loses_life
    assert_equal(5, @player1.player_loses_life)
  end

  def test_result_of_game__guess_again
    fun_word = @word.split_word()
    index_position = fun_word.find_index("s")
    hidden_array = @word.hide_word(fun_word)
    letter_in_word = @word.letter_in_word("s")
    @word.use_index_to_replace_letter(hidden_array, index_position, letter_in_word)
    assert_equal("Guess Again", @game.result_of_game(hidden_array, @word, @player1.lives()))
  end

  def test_letter_not_in_word
    fun_word = @word.split_word()
    index_position = fun_word.find_index("s")
    hidden_array = @word.hide_word(fun_word)
    letter_in_word = @word.letter_in_word("s")
    @word.use_index_to_replace_letter(hidden_array, index_position, letter_in_word)
    assert_equal("You Lose", @game.result_of_game(hidden_array, @word, @player2.lives()))
  end

  def test_result_of_game__guess_again

    fun_word = @word.split_word()
    index_position0 = fun_word.find_index("s")
    hidden_array = @word.hide_word(fun_word)
    letter_in_word0 = @word.letter_in_word("s")
    @word.use_index_to_replace_letter(hidden_array, index_position0, letter_in_word0)

    index_position1 = fun_word.find_index("n")
    letter_in_word1 = @word.letter_in_word("n")
    @word.use_index_to_replace_letter(hidden_array, index_position1, letter_in_word1)

    index_position2 = fun_word.find_index("o")
    letter_in_word2 = @word.letter_in_word("o")
    @word.use_index_to_replace_letter(hidden_array, index_position2, letter_in_word2)

    index_position3 = fun_word.find_index("w")
    letter_in_word3 = @word.letter_in_word("w")
    @word.use_index_to_replace_letter(hidden_array, index_position3, letter_in_word3)

    index_position4 = fun_word.find_index("m")
    letter_in_word4 = @word.letter_in_word("m")
    @word.use_index_to_replace_letter(hidden_array, index_position4, letter_in_word4)

    index_position5 = fun_word.find_index("a")
    letter_in_word5 = @word.letter_in_word("a")
    @word.use_index_to_replace_letter(hidden_array, index_position5, letter_in_word5)

    index_position6 = fun_word.find_index("n")
    letter_in_word6 = @word.letter_in_word("n")
    @word.use_index_to_replace_letter(hidden_array, index_position6, letter_in_word6)
    p hidden_array

    assert_equal("You Win", @game.result_of_game(hidden_array, @word, @player1.lives()))
  end

end
