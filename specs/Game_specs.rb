require("minitest/autorun")
require("minitest/rg")
require_relative("../Game")
require_relative("../Player")
require_relative("../HiddenWord")

class TestGame < MiniTest::Test

  def setup

    @game = Game.new

    @word = HiddenWord.new("snowman")

    @player = Player.new("Bob", 6)

  end

  def test_player_has_name
    assert_equal("Bob", @player.name)
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
    assert_equal(5, @player.player_loses_life)
  end

  def test_result_of_game
    fun_word = @word.split_word()
    index_position = fun_word.find_index("s")
    hidden_array = @word.hide_word(fun_word)
    letter_in_word = @word.letter_in_word("s")
    @word.use_index_to_replace_letter(hidden_array, index_position, letter_in_word)
    assert_equal("Guess Again", @game.result_of_game(hidden_array, @word, @player.lives()))
  end

  # def test_player_wins
  #   fun_word = @word.split_word()
  #   index_position = fun_word.find_index("s")
  #   hidden_array = @word.hide_word(fun_word)
  #   letter_in_word = @word.letter_in_word("s")
  #   @word.use_index_to_replace_letter(hidden_array, index_position, letter_in_word)
  #
  #   assert_equal("You Win", @game.result_of_game())
  # end

  # def test_player_loses
  #   assert_equal("You Lose", @game.result_of_game)
  # end

end
