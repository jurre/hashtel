# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hashtel/version'

Gem::Specification.new do |spec|
  spec.name          = "hashtel"
  spec.version       = Hashtel::VERSION
  spec.authors       = ["Jurre Stender"]
  spec.email         = ["jurrestender+github@gmail.com"]
  spec.summary       = %q{Consistently convert strings to the same (pretty) color}
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split("\n")
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.1"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rake"
end
