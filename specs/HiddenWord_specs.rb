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
    assert_equal(["*", "*", "*", "*", "*", "*", "*"], @word.hide_word(fun_word))
  end

  def test_is_letter_in_word
    @word.split_word()
    assert_equal("s", @word.letter_in_word("s"))
  end

  def test_find_letter_index
    fun_word = @word.split_word()
    assert_equal(0,fun_word.find_index("s"))
  end

  def test_use_index_to_replace_letter
    fun_word = @word.split_word()

    index_position = fun_word.find_index("s")
    hidden_array = @word.hide_word(fun_word)
    letter_in_word = @word.letter_in_word("s")

    assert_equal(["s", "*", "*", "*", "*", "*", "*"],
      @word.use_index_to_replace_letter(hidden_array, index_position, letter_in_word))
  end

  # assert_equal(true, @word.letter_in_word("s"))

end
