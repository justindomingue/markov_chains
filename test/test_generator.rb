require 'minitest/autorun'
require 'markov_chains'

class GeneratorTest < Minitest::Test
  def setup
    source = "Why did the Mobius Strip cross the road? To get to the same side!"
    @generator = MarkovChains::Generator.new source
  end
  
  def test_get_sentences
    assert_equal 5, @generator.get_sentences(5).count
  end
end
