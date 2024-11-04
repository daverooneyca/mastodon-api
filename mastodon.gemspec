lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mastodon/version'

Gem::Specification.new do |spec|
  spec.name          = 'mastodon-api'
  spec.description   = 'A ruby interface to the Mastodon API'
  spec.homepage      = 'https://github.com/daverooneyca/mastodon-api'
  spec.email         = 'daverooneyca@gmail.com'
  spec.authors       = ['Eugen Rochko', 'Dave Rooney']
  spec.summary       = spec.description
  spec.licenses      = %w(MIT)
  spec.files         = %w(mastodon.gemspec) + Dir['lib/**/*.rb']
  spec.require_paths = %w(lib)
  spec.version       = Mastodon::Version

  spec.add_dependency 'http', '~> 4.0'
  spec.add_dependency 'oj', '~> 3.7'
  spec.add_dependency 'addressable', '~> 2.6'
  spec.add_dependency 'buftok', '~> 0'

  spec.add_development_dependency 'bundler', '> 1', '< 3'
end
