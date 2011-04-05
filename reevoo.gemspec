# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "reevoo/version"

Gem::Specification.new do |s|
  s.name        = "reevoo"
  s.version     = Reevoo::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["TODO: Andrew Nesbitt"]
  s.email       = ["TODO: andrewnez@gmail.com"]
  s.homepage    = "http://github.com/andrew/reevoo"
  s.summary     = %q{Reevoo API wrapper}
  s.description = %q{Ruby wrapper around the Reevoo XML API}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency(%q<faraday>, ["~>  0.5.7"])
  s.add_dependency(%q<crack>, ["~>  0.1.8"])
  s.add_dependency(%q<hashie>, ["~>  1.0.0"])

  s.add_development_dependency(%q<rspec>, ["~>  2.5.0"])
end
