# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "godmin/activestorage/version"

Gem::Specification.new do |spec|
  spec.name          = "godmin-activestorage"
  spec.version       = Godmin::Activestorage::VERSION
  spec.authors       = ["Johan Halse"]
  spec.email         = ["johan.halse@varvet.com"]

  spec.summary       = "A Godmin plugin for ActiveStorage instead of Refile"
  spec.description   = "Handles uploads for you, using your app's ActiveStorage configuration."
  spec.homepage      = "https://github.com/varvet/godmin-activestorage"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "https://rubygems.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/varvet/godmin-activestorage"
  spec.metadata["changelog_uri"] = "https://github.com/varvet/godmin-activestorage/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activestorage", ">= 6.0.0"
  spec.add_dependency "godmin", ">= 2.0.0"
  spec.add_dependency "rails", ">= 5.2.0"
  spec.add_dependency "image_processing", "1.9.3"

  spec.add_development_dependency "bundler", ">= 1.7"
  spec.add_development_dependency "byebug", ">= 11.0"
  spec.add_development_dependency "capybara", ">= 3.2"
  spec.add_development_dependency "mini_magick", ">= 4.9"
  spec.add_development_dependency "minitest", ">= 5.0"
  spec.add_development_dependency "puma", ">= 4.0"
  spec.add_development_dependency "rake", ">= 10.0"
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "webdrivers", ">= 4.0"
end
