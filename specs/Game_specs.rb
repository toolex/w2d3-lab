require("minitest/autorun")
require("minitest/rg")
require_relative("../Game")
require_relative("../Player")
require_relative("../HiddenWord")

class TestGame < MiniTest::Test

  def setup

    @word = HiddenWord.new("snowman")

    @player = Player.new("Bob", 6)

  end

  def test_player_has_name
    assert_equal("Bob", @player.name)
  end

  def test_word_exists
    assert_equal("snowman", @word.word_exists)
  end

end
