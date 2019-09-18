require("minitest/autorun")
require("minitest/rg")
require_relative("../Player")

class TestPlayer < MiniTest::Test

  def setup()
    @player = Player.new("Bob", 6)
  end

  def test_player_has_name
    assert_equal("Bob", @player.name)
  end

  def test_player_has_lives
    assert_equal(6, @player.lives)
  end

end
