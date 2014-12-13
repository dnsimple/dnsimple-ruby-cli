# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'dnsimple/cli/version'

Gem::Specification.new do |s|
  s.name        = 'dnsimple-cli'
  s.version     = DNSimple::CLI::VERSION
  s.authors     = ['Anthony Eden', 'Simone Carletti']
  s.email       = ['anthony.eden@dnsimple.com', 'simone.carletti@dnsimple.com']
  s.homepage    = 'http://github.com/aetrion/dnsimple-ruby-cli'
  s.summary     = 'A ruby CLI for the DNSimple API'
  s.description = 'A ruby CLI for the DNSimple API.'

  s.require_paths    = ['lib']
  s.files            = `git ls-files`.split("\n")
  s.test_files       = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.extra_rdoc_files = %w( README.markdown CHANGELOG.markdown LICENSE )

  s.add_dependency  'dnsimple', '=2.0.0.a'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'aruba'
  s.add_development_dependency 'cucumber'
  s.add_development_dependency 'mocha'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'yard'
  s.add_development_dependency 'webmock'
end

