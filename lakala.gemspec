# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "lakala/version"

Gem::Specification.new do |s|
  s.name        = "lakala"
  s.version     = Lakala::VERSION
  s.authors     = ["helloqidi"]
  s.email       = ["helloqidi@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{summary : This is an API for lakala.}
  s.description = %q{description : This is an API for lakala.}

  s.rubyforge_project = "lakala"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
