# frozen_string_literal: true
$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'interactive-rake/version'

Gem::Specification.new do |s|
  s.name        = 'interactive-rake'
  s.version     = InteractiveRake::VERSION
  s.required_ruby_version = Gem::Requirement.new('>= 2.4')
  s.authors     = ['Ryan Tulino']
  s.email       = 'rtulino@gmail.com'
  s.summary     = 'Interactive Rake'
  s.description = 'Enhance your rake tasks!'
  s.files       = `git ls-files lib`.split("\n")
  s.homepage    = 'http://rubygems.org/gems/interactive-rake'
  s.licenses     = ['MIT']
  s.require_paths = ['lib']
  s.add_runtime_dependency 'rake'
end
