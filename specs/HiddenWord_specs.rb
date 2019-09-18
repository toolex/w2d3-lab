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

  def test_split_word
    assert_equal(["s", "n", "o", "w", "m", "a", "n"], @word.split_word())
  end

  def test_hide_word
    fun_word = @word.split_word()
    assert_equal("*******", @word.hide_word(fun_word))
  end

  def test_is_letter_in_word
    @word.split_word()
    assert_equal(true, @word.letter_in_word("s"))
  end


end
