require 'markov_chains/version.rb'

module MarkovChains

  def self.initialize(source)
    @dict = new MarkoChains::Dictionary(source)
    @generator = new Generator()
  end
  
  def self.random_sentence
  end
end

require 'markov_chains/dictionary.rb'
require 'markov_chains/generator.rb'