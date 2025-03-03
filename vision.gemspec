$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "vision/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "vision"
  spec.version     = Vision::VERSION
  spec.authors     = ["ken1flan"]
  spec.email       = ["ken1flan@gmail.com"]
  spec.homepage    = "https://github.com/academist/vision"
  spec.summary     = "Summary of Vision."
  spec.description = "Description of Vision."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", '>= 6.0.0', '< 8.1'
  spec.add_dependency "haml-rails", "~> 2.0"
  spec.add_dependency "concurrent-ruby", "1.3.4" # Rails7.0でのエラー対策

  spec.test_files = Dir["spec/**/*"]
end
