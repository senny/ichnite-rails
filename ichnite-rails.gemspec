# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ichnite/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "ichnite-rails"
  spec.version       = Ichnite::Rails::VERSION
  spec.authors       = ["Yves Senn"]
  spec.email         = ["yves.senn@gmail.com"]

  spec.summary       = %q{Structured logging for Rails using the ichnite gem.}
  spec.description   = %q{Integrates the ichnite gem with the Rails stack.}
  spec.homepage      = "https://github.com/senny/ichnite-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "ichnite", ">= 0.0.5"
  spec.add_dependency "rails", ">= 4.2"

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
