##############################################
# WARNING: Modified for daisy ui
# ###########################################

require_relative "lib/tailwindcss/version"

Gem::Specification.new do |spec|
  spec.name        = "tailwindcss-rails"
  spec.version     = "3.0.0"
  spec.authors     = [ "David Heinemeier Hansson" ]
  spec.email       = "david@loudthinking.com"
  spec.homepage    = "https://github.com/rails/tailwindcss-rails"
  spec.summary     = "Integrate Tailwind CSS with the asset pipeline in Rails."
  spec.license     = "MIT"

  spec.metadata = {
    "homepage_uri" => spec.homepage,
    "rubygems_mfa_required" => "true"
  }

  spec.required_rubygems_version = ">= 3.2.0" # for Gem::Platform#match_gem?

  spec.files = Dir["{app,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  spec.bindir = "exe"
  spec.executables << "tailwindcss"

  spec.add_dependency "railties", ">= 7.0.0"
end
