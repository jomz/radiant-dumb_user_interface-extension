# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "radiant-dumb_user_interface-extension/version"

Gem::Specification.new do |s|
  s.name        = "radiant-dumb_user_interface-extension"
  s.version     = RadiantDumbUserInterfaceExtension::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Benny Degezelle"]
  s.email       = ["benny@gorilla-webdesign.be"]
  s.homepage    = "http://github.com/jomz/radiant-dumb_user_interface-extension"
  s.summary     = %q{Dumb User Interface for Radiant CMS}
  s.description = %q{Makes Radiant better by adding dumb_user_interface!}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.post_install_message = %{
  Add this to your radiant project with:
    config.gem 'radiant-dumb_user_interface-extension', :version => '#{RadiantDumbUserInterfaceExtension::VERSION}'
  }
end