# -*- encoding: utf-8 -*-
require File.expand_path('../lib/resque-benchmark/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Adam"]
  gem.email         = ["electronicbattleweapon7@gmail.com"]
  gem.description   = %q{Benchmark your Resque jobs}
  gem.summary       = %q{Keep track of how long it takes to run your Resque jobs, from queueing to completion}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "resque-benchmark"
  gem.require_paths = ["lib"]
  gem.version       = Resque::Benchmark::VERSION

  gem.add_development_dependency('rake')
end
