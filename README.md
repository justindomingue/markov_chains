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

## Change log

* Version 0.1.0 - Added order attribute in the generator for higher-order markov chains and rewrote the most of the internal code to handle order
* Version 0.0.0 - Initial release

## Contributing

1. Fork it ( https://github.com/[justindomingue]/markov-chains/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
