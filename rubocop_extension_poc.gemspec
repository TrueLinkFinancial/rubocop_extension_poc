# frozen_string_literal: true

require_relative "lib/rubocop_extension_poc/version"

Gem::Specification.new do |spec|
  spec.name = "rubocop_extension_poc"
  spec.version = RubocopExtensionPoc::VERSION
  spec.authors = ["Venecia Alvarez"]
  spec.email = ["veneciaa671@gmail.com"]

  spec.summary = "A True Link POC for a Rubocop extension"
  spec.homepage = "https://github.com/TrueLinkFinancial/rubocop_extension_poc"
  spec.required_ruby_version = ">= 3.1.0"

  spec.metadata["allowed_push_host"] = "https://ruby.cloudsmith.io/truelinkfinancial/rubocop_extension_poc/"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/TrueLinkFinancial/rubocop_extension_poc"
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  spec.files = Dir["lib/**/*", "README.md", "LICENSE.txt", "rubocop_extension_poc.gemspec"]

  spec.executables = ["rubocop_extension_poc"]
  spec.bindir = "bin"

  spec.require_paths = ["lib"]
  # spec.license = "MIT"

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
