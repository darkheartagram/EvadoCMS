# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "dummy/version"

Gem::Specification.new do |s|
  s.name        = "dummy"
  s.version     = Dummy::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Ed"]
  s.email       = ["TODO: Write your email address"]
  s.homepage    = "http://rubygems.org/gems/dummy"
  s.summary     = %q{A rails 3 engine example , where the approaches to test the rails engine does not involve embedding an empty rails app in the spec directory instead we have followed the style used by DHH in the tolk engine, where the test is ran on the rails engine as a stand alone entity}
  s.description = %q{A rails 3 engine example , where the approaches to test the rails engine does not involve embedding an empty rails app in the spec directory instead we have followed the style used by DHH in the tolk engine, where the test is ran on the rails engine as a stand alone entity}

  s.rubyforge_project = "dummy"
  s.require_paths = ["lib"]
  
  s.add_development_dependency "rspec", "2.1.0"
  s.add_dependency "activerecord", "3.0.9"
  s.add_dependency "win32console", "1.3.0"
  s.add_dependency "rails", "3.0.9"
  
end
