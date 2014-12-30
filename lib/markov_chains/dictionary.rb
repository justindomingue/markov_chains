module MarkovChains
  class Dictionary
    
    # Initialized the dictionary with a text source.
    #
    # @example Create a new dictionary
    #   MarkovChains::Dictionary.new(string)
    # @param [String] the text source
    #
    def initialize(text)
      @words = Hash.new
      @start_words = Array.new
      
      wordlist = text.split
      
      # Add first word as possible start word
      @start_words.push wordlist[0]
      
      # Process each word
      wordlist.each_with_index do |word, index|
          add(word, wordlist[index + 1]) if index <= wordlist.size - 2
      end
    end
  
    # Returns a word based on the likelihood of it appearing after the input word
    #
    # @example Get a word likely to appear next to the word 'It'
    #   get('It')
    #
    # @param [String] word for which we want a possible next word
    # @return [String] word that is likely to follow the input word
    #
    def get(word)
      return "" if !@words[word]
      followers = @words[word]
      sum = followers.inject(0) {|sum,kv| sum += kv[1]}
      random = rand(sum)+1
      partial_sum = 0
      next_word = followers.find do |word, count|
        partial_sum += count
        partial_sum >= random
      end.first
      next_word
    end
    
    # Returns a word beginning a sentence seen in the source
    #
    # @example Get a start word
    #   get_start_word()
    # @return [String] a possible start word
    #
    def get_start_word
      @start_words.sample
    end
    
  private
    
    # Adds word-next_word combination to the dictionary
    #
    # @example Adding a word in a order 1 dictionary
    #   add_word("It", "has")
    # @example Adding words in a order m dictionary
    #   add_word("It has", "been")
    #
    # @param word [string] root word
    # @param next_word [string] word following the root word
    #
    def add(word, next_word)
      @words[word] = Hash.new(0) if !@words[word]
      @words[word][next_word] += 1
      @start_words.push(next_word) if word.end_with? '.' and !word.blank?
    end
    
  end
end