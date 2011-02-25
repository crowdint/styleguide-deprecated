# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "styleguide/version"

Gem::Specification.new do |s|
  s.name        = "styleguide"
  s.version     = Styleguide::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Hector Bustillos M."]
  s.email       = ["hector.bustillos@crowdint.com"]
  s.homepage    = "www.crowdint.com"
  s.summary     = %q{This gem generates a style guide for your app}
  s.description = %q{This gem generates a style guide for your app}

  s.rubyforge_project = "styleguide"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib","generators"]
  
  s.add_dependency('rails')
  s.add_dependency('haml')
  s.add_dependency('rspec')  
  s.add_dependency('rspec-rails')
  s.add_dependency('sqlite3')
  
end
