require("minitest/autorun")
require("minitest/rg")
# require_relative("../Game")
# require_relative("../Player")
require_relative("../HiddenWord")

class TestHiddenWord < MiniTest::Test

  def setup

    @word = HiddenWord.new("snowman")

  end

  def test_word_exists
    assert_equal("snowman", @word.word_exists)
  end

end
