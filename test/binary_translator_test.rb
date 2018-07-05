require 'minitest/autorun'
require 'minitest/pride'
require './lib/binary_translator'
require 'pry'

class BinaryTranslatorTest < Minitest::Test

  def test_it_exists
    bt = BinaryTranslator.new
    assert_instance_of BinaryTranslator, bt
  end

  def test_it_can_translate_letter_a_to_binary
    bt = BinaryTranslator.new
    assert_equal "000001", bt.translate("a")
  end

  def test_it_can_translate_any_letter_to_binary
    bt = BinaryTranslator.new
    assert_equal "011010", bt.translate("z")
  end

  def test_it_can_translate_a_word_to_binary
    bt = BinaryTranslator.new
    assert_equal "010100010101010010001001001110000111", bt.translate("turing")
  end

  def test_it_can_translate_an_uppercase_letter_to_binary
    bt = BinaryTranslator.new
    assert_equal "000001", bt.translate("A")
  end

  def test_it_can_translate_an_uppercase_word_to_binary
    bt = BinaryTranslator.new
    assert_equal "010100010101010010001001001110000111", bt.translate("TURING")
  end

  def test_spaces_equal_to_000000
    bt = BinaryTranslator.new
    assert_equal "000000", bt.translate(" ")
  end

  def test_it_ignores_non_letters
    bt = BinaryTranslator.new
    assert_equal "", bt.translate("!@{$#%^&*()}")
  end

  def test_it_can_translate_while_also_ignoring
    bt = BinaryTranslator.new
    assert_equal "001000000101001100001100001111000000010111001111010010001100000100", bt.translate("Hello World!")
  end

  def test_it_can_translate_binary_to_test
    skip
    bt = BinaryTranslator.new
    assert_equal "hello world", bt.translate_to_text("001000000101001100001100001111000000010111001111010010001100000100")
  end
end
