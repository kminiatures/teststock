# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'splitbar/version'

Gem::Specification.new do |spec|
  spec.name          = "splitbar"
  spec.version       = Splitbar::VERSION
  spec.authors       = ["hiroshi kobayashi"]
  spec.email         = ["koba.shipbuilding@gmail.com"]

  spec.summary       = %q{split bar}
  spec.description   = %q{split bar...}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
