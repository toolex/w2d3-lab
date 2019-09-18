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

  def test_is_letter_in_word
    assert_equal(true, @game.letter_in_word("s"))
  end

  def test_show_word_with_correct_guess
    assert_equal("s******", @game.correct_guess())
  end

  def test_player_loses_life
    assert_equal(5, @player.player_loses_life)
  end

end
