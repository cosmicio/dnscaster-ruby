# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dnscaster/api/version'

Gem::Specification.new do |spec|
  spec.name          = "dnscaster"
  spec.version       = Dnscaster::VERSION
  spec.authors       = ["DNScaster Team"]
  spec.email         = ["hello@notioneer.com"]
  spec.description   = %q{DNScaster client for Ruby.}
  spec.summary       = %q{DNScaster client for Ruby}
  spec.homepage      = "https://dnscaster.com/"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 2.7'

  spec.add_dependency 'ncore', '>= 3.10', '< 4'

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
end
