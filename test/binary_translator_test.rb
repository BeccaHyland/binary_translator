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

  def test_it_can_ignore_spaces
    bt = BinaryTranslator.new
    assert_equal "000000", bt.translate(" ")
  end
end
