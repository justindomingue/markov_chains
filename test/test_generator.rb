require 'minitest/autorun'
require 'markov_chains'

class GeneratorTest < Minitest::Test
  def setup
    source = "Why did the chicken cross the Mobius Strip? To get to the same side!"
    @generator = MarkovChains::Generator.new source
  end
  
  def test_get_sentences
    assert_equal 5, @generator.get_sentences(5).count
  end
end
