$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name          = 'basicgeo'
  s.version       = '0.0.0'
  s.summary       = 'BasicGeo'
  s.date          = '2015-02-25'
  s.description   = 'An basic Geo'
  s.authors       = ['Gabriel Malaquias']
  s.email         = 'gabriel07malakias@gmail.com'
  s.files         = `git ls-files`.split("\n") - %w[basicgeo.gemspec Gemfile basicgeo-0.0.0.gem]
  s.require_paths = ['lib']
  s.homepage      =
    'http://rubygems.org/gems/basicgeo'
  s.license       = 'MIT'
end
