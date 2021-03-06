# Markov Chains

A simple random text generator from source text using markov chains.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'markov_chains'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install markov_chains

## Usage

Create a generator and give it a source text:

    text = "Why did the chicken cross the Mobius Strip?, To get to the same side..."
    generator = MarkovChains::Generator.new(text)

Generate a number of sentences, here 5:

    generator.get_sentences(5)

### Higher Order Markov Chains

By default, the generator will use order-1 Markov chains, meaning that when selecting a next word, the generator will only consider 1 previous word. A Markov chain or order `n` will consider `n` previous words, meaning it will have more context and the generated text should be more sensible. However, the higher the order, the closer the generated text will be from the original one. Orders between 1 and 3 are typical; higher orders will often generate bits of the original text verbatim.

Create a generator using a Markov chain of higher order (Markov chain with memory `order`) :
    
    order = 2
    generator = MarkovChains::Generator.new(text, order)
    generator.get_sentences(5)

## Change log

* Version 0.1.1 - Fixed bug with Ruby 2.0.0
* Version 0.1.0 - Added order attribute in the generator for higher-order markov chains and rewrote the most of the internal code to handle order
* Version 0.0.0 - Initial release

## Contributing

1. Fork it ( https://github.com/[justindomingue]/markov-chains/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
