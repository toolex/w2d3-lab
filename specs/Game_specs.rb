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

end
