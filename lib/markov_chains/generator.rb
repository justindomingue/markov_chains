module MarkovChains
  class Generator
    
    # Initializes the generator
    #
    # @example Create a new generator
    #   MarkovChains::Generator.new(text)
    #
    # @param Text source to generate sentences from
    #
    def initialize(text)
      @dict = MarkovChains::Dictionary.new(text)
    end
    
    # Returns a given number of randonly generated sentences
    #
    # @example Get 5 sentences
    #   get_sentences(5)
    #
    # @param n [int] number of sentences to generate
    # @return Array conataining generated sentences
    #
    def get_sentences(n)
      sentences = []
      
      n.times do
        sentence = ""
        word = @dict.get_start_word
        until sentence.scan(/\.|\?|!/).size == 1
          sentence << word << " "
          word = @dict.get(word)
        end
        
        sentences.push sentence
      end
      
      sentences
    end
  end
end