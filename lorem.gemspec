# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "lorem/version"

Gem::Specification.new do |s|
  s.name        = "lorem"
  s.version     = Lorem::VERSION
  s.authors     = ["Rogelio Guzman"]
  s.email       = ["chinog9@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{A lorem Ipsum generator}
  s.description = %q{A lorem Ipsum generator}

  s.rubyforge_project = "lorem"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
