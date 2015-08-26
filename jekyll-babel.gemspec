# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll-babel/version'

Gem::Specification.new do |spec|
  spec.name          = "jekyll-babel"
  spec.version       = Jekyll::Babel::VERSION
  spec.authors       = ["James Kyle"]
  spec.email         = ["me@thejameskyle.com"]
  spec.summary       = %q{A Babel converter for Jekyll.}
  spec.homepage      = "https://github.com/jekyll/jekyll-babel"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/).grep(%r{(lib/)})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "babel-transpiler"

  spec.add_development_dependency "jekyll", "~> 2.0"
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
