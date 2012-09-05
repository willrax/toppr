# -*- encoding: utf-8 -*-
require File.expand_path('../lib/toppr/version', __FILE__)

Gem::Specification.new do |gem|

  gem.add_dependency 'hashie'
  gem.add_dependency 'multi_json'
  gem.add_dependency 'httparty'
  gem.add_development_dependency 'vcr'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'webmock'
  gem.add_development_dependency 'yard'
  gem.authors       = ["willrax"]
  gem.email         = ["git@willrax.com"]
  gem.description   = %q{Ruby wrapper for Desktoppr API}
  gem.summary       = %q{Ruby wrapper for Desktoppr API}
  gem.homepage      = "https://github.com/willrax/toppr"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "toppr"
  gem.require_paths = ["lib"]
  gem.version       = Toppr::VERSION
end
