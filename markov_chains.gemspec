# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'markov_chains/version'

Gem::Specification.new do |spec|
  spec.name          = "markov_chains"
  spec.version       = MarkovChains::VERSION
  spec.authors       = ["justindomingue"]
  spec.email         = ["justin.domingue@hotmail.com"]
  spec.summary     = 'A simple random text generator using markov chains.'
  spec.homepage      = "https://github.com/justindomingue/markov_chains"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
