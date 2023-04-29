lib = File.expand_path('../lib', __FILE__)
$:.unshift(lib) unless $:.include?(lib)

require 'twitter/rest/v2/tweet/version'

Gem::Specification.new do |s|
  s.name        = 'twitter-rest-v2-tweet'
  s.version     = Twitter::REST::V2::Tweet::VERSION
  s.platform    = Gem::Platform::RUBY
  s.licenses    = 'MIT'
  s.summary     = 'A Patch the `twitter` gem for tweeting'
  s.email       = '-'
  s.homepage    = 'https://github.com/SongCastle/twitter-rest-v2-tweet'
  s.description = 'Patch `twitter` gem for tweeting by Twitter V2 API.'
  s.author      = 'SongCastle'

  s.files                 = Dir['lib/**/*', 'README.md']
  s.require_paths         = ['lib']
  s.required_ruby_version = Gem::Requirement.new('>= 3.0')

  s.add_runtime_dependency('twitter', '>= 7.0.0')
end
