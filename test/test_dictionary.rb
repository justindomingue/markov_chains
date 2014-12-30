require 'minitest/autorun'
require 'markov_chains'

class DictionaryTest < Minitest::Test
  def setup
    source = "Why did the chicken cross the road?"
    @dict = MarkovChains::Dictionary.new(source)
  end
  
  def test_get
    assert_equal "did", @dict.get("Why")
    assert_equal true, %w(chicken road).include?( @dict.get("the"))
    assert_equal "", @dict.get("Not there...")
  end
  
  def test_get_start_word
    assert_equal "Why", @dict.get_start_word()
  end
end