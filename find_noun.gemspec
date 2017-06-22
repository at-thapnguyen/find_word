# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "find_noun/version"

Gem::Specification.new do |spec|
  spec.name          = "find_noun"
  spec.version       = FindNoun::VERSION
  spec.authors       = ["at-thapnguyen"]
  spec.email         = ["thapnguyen@asiantech.vn"]

  spec.summary       = %q{Gem find noun,verb,adjective}
  spec.description   = %q{Gem will help find noun,verb,adjective in your sentence and length}
  spec.homepage      = ""
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
 spec.add_runtime_dependency 'engtagger', '~> 0.2.1'
 spec.add_runtime_dependency('terminal-table', '1.5.2')
 spec.add_runtime_dependency('rainbow', '2.0')
end
