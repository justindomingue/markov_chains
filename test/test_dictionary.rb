require 'minitest/autorun'
require 'markov_chains'

class DictionaryTest < Minitest::Test
  def setup
    source = "Why did the chicken cross the road?"
    @order1 = MarkovChains::Dictionary.new(source)
  end

  def test_get
    assert_equal "did", @order1.get(["Why"])
    assert_equal true, %w(chicken road).include?(@order1.get(["the"]))
    assert_equal nil, @order1.get(["Not there..."])
  end
  
  def test_get_start_word
    assert_equal ["Why"], @order1.get_start_words
  end
end