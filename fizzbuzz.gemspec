# frozen_string_literal: true

require_relative 'lib/fizzbuzz/version'

Gem::Specification.new do |spec|
  spec.name          = 'fizzbuzz'
  spec.version       = Fizzbuzz::VERSION
  spec.authors       = ['Diego Lemos']
  spec.email         = ['diego@diegolemos.net']

  spec.summary       = '1 2 fizz 4 buzz fizz 7 8 fizz...'
  spec.homepage      = 'https://diegolemos.net/'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.metadata['allowed_push_host'] = 'https://push.fury.io/dlresende'
end
