Gem::Specification.new do |spec|
  spec.name          = "lita-shipit"
  spec.version       = "0.2.1"
  spec.authors       = ["Josh Nichols"]
  spec.email         = ["josh@technicalpickles.com"]
  spec.description   = %q{A lita handler that provides easy access to the shipit squirrel and its kin}
  spec.summary       = %q{A lita handler that provides easy access to the shipit squirrel and its kin}
  spec.homepage      = "https://github.com/technicalpickles/lita-shipit"
  spec.license       = "MIT"
  spec.metadata      = { "lita_plugin_type" => "handler" }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", ">= 4.0"

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "rspec", ">= 3.0.0"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "coveralls"
end
