# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mobit/version'

Gem::Specification.new do |spec|
  spec.name          = 'mobit'
  spec.version       = Mobit::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.authors       = ['alexmercury', 'b8in']
  spec.email         = ['rubybeastua@gmail.com']
  spec.homepage      = 'https://github.com/rubybeast/mobit'
  spec.license       = 'MIT'

  spec.files         = %w(README.md Rakefile LICENSE.txt)
  spec.files         += Dir['lib/**/*.rb', 'lib/tasks/**/*.rake']
  spec.files         += Dir['lib/mobit/data/**/*.csv']

  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'actionpack', '~> 4.0'

  spec.summary       = 'Beautiful input for mobile phone number.'
  spec.description   = <<-eos
  Gem for creating beautiful input for mobile phone number
in the Rails views.
Supported ViewHelpers:
  Rails Form
  Simple_Form
  Formtastic
eos

end