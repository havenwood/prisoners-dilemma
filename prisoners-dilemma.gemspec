# -*- encoding: utf-8 -*-
require File.expand_path('../lib/prisoners-dilemma/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ['Shannon']
  gem.email         = ['shannonskipper@gmail.com']
  gem.description   = %q{Ruby Simulation of the "Prisoners' Dilemma"}
  gem.summary       = %q{A Ruby Gem that simulates the Prisoners' Dilemma.}
  gem.homepage      = 'https://github.com/Havenwood/persist'

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^test/})
  gem.name          = 'prisoners-dilemma'
  gem.require_paths = ['lib']
  gem.version       = Game.version
  
  gem.add_development_dependency 'minitest'
end