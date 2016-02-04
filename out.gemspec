# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'out/version'

Gem::Specification.new do |spec|
  spec.name          = "out"
  spec.version       = Out::VERSION
  spec.authors       = ["sapslaj"]
  spec.email         = ["saps.laj@gmail.com"]

  spec.summary       = "Output everything"
  spec.homepage      = "http://sapslaj.github.io"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'coderay'
  spec.add_dependency 'tty'

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'm'
end
