# frozen_string_literal: true
$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'interactive-rake'
require 'interactive-rake/version'

desc "Release version #{InteractiveRake::VERSION} of the gem"
task :release do
  continue? "Release version #{InteractiveRake::VERSION} of the gem? (y|n)"

  system "git tag -a v#{InteractiveRake::VERSION} -m 'Tagging #{InteractiveRake::VERSION}'"
  system 'git push --tags'

  system 'gem build interactive-rake.gemspec'
  system "gem push interactive-rake-#{InteractiveRake::VERSION}.gem"
  system "rm interactive-rake-#{InteractiveRake::VERSION}.gem"
end
