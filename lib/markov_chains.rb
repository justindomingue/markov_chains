require_relative 'markov_chains/version.rb'

module MarkovChains

  def self.initialize(source)
    @dict = MarkovChains::Dictionary.new(source)
    @generator = MarkovChains::Generator.new
    self
  end
  
  def self.random_sentence
  end
end

require_relative 'markov_chains/dictionary.rb'
require_relative 'markov_chains/generator.rb'