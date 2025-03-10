source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Declare your gem's dependencies in vision.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec

# Declare any dependencies that are still in development here instead of in
# your gemspec. These might include edge Rails or gems from your path or
# Git. Remember to move these dependencies to your gemspec before releasing
# your gem to rubygems.org.

# To use a debugger
# gem 'byebug', group: [:development, :test]

gem 'carrierwave'
gem 'bootstrap', '~> 4.4.1'
gem 'jquery-rails'
gem 'font-awesome-sass'
gem 'rails_autolink'

group :development, :test do
  gem 'brakeman', require: false
  gem 'haml_lint', require: false
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'puma'
  gem 'reek', require: false
  gem 'rspec-rails', '~> 5.0'
  gem 'rubocop', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
  gem 'sqlite3', '~> 2.6'
  gem 'factory_bot_rails'
  gem 'faker'
end

group :test do
  gem 'shoulda-matchers', '~> 6.4'
end
