# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'stackprof-webnav/version'

Gem::Specification.new do |spec|
  spec.name          = "stackprof-webnav"
  spec.version       = StackProf::Webnav::VERSION
  spec.authors       = ["Andrei Lisnic"]
  spec.email         = ["andrei.lisnic@gmail.com"]
  spec.summary       = %q{View stackprof dumps in a web UI}
  spec.description   = %q{Provides the ability to analyze StackProf dumps}
  spec.homepage      = "https://github.com/alisnic/stackprof-webnav"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.bindir = 'bin'
  spec.executables << 'stackprof-webnav'

  spec.add_dependency "sinatra"
  spec.add_dependency "haml"
  spec.add_dependency "stackprof"
  spec.add_dependency "better_errors"
  spec.add_dependency "ruby-graphviz"
  spec.add_dependency "sinatra-contrib"
  spec.add_dependency "webrick"
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rack-test"
end
