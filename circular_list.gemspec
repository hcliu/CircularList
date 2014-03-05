# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "circular_list/version"

Gem::Specification.new do |s|
  s.name        = "circular_list"
  s.version     = CircularList::VERSION
  s.authors     = ["unnitallman"]
  s.email       = ["unni.tallman@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{A circular list data structure for Ruby}
  s.description = %q{A circular list data structure for Ruby}

  s.rubyforge_project = "circular_list"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'

end
