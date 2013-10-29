# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'algos/version'

Gem::Specification.new do |spec|
  spec.name          = "algos"
  spec.version       = Algos::VERSION
  spec.authors       = ["nickcen"]
  spec.email         = ["cenyongh@gmail.com"]
  spec.description   = %q{common algorithms in ruby}
  spec.summary       = %q{common algorithms in ruby}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
