# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'find_dance_events/version'

Gem::Specification.new do |spec|
  spec.name          = "find-dance-events-cli-gem"
  spec.version       = FindDanceEvents::VERSION
  spec.authors       = ["Laka134"]
  spec.email         = ["earlleah@gmail.com"]

  spec.summary       = %q{Find dance events in several countries.}
  spec.description   = %q{Users can look up dance events by country and see details on a specific event.}
  spec.homepage      = "https://github.com/LeahEarl/find_dance_events"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = ["find-dance-events"]
  spec.require_paths = ["lib", "lib/find_dance_events"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"

  spec.add_dependency "nokogiri"
end
