require_relative "lib/shipped/version"

Gem::Specification.new do |spec|
  spec.name        = "shipped"
  spec.version     = Shipped::VERSION
  spec.authors     = [ "Jeremy Walton" ]
  spec.email       = [ "jeremy.patrick.walton@gmail.com" ]
  spec.homepage    = "https://www.launchtabs.com/"
  spec.summary = "Shipped is a Ruby on Rails plugin for managing " \
    "application release notes within your application. It provides a " \
    "simple admin interface for creating releases. "
  spec.description = "The release notes framework for Ruby on Rails."
  spec.license     = "MIT"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Jeremy-Walton/shipped"
  spec.metadata["changelog_uri"] = "https://github.com/Jeremy-Walton/shipped/blob/main/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 8.0.1"
  spec.add_dependency "slim", "~> 5.2"
  spec.add_dependency "slim-rails", "~> 3.7"
end
