# frozen_string_literal: true

source 'https://rubygems.org'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails', '~> 8.0.2'
# The modern asset pipeline for Rails [https://github.com/rails/propshaft]
gem 'propshaft', '~> 1.2.1'
# Use postgres as the database for Active Record
gem 'pg', '~> 1.6.0'
# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '>= 5.0'
# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem 'importmap-rails', '~> 2.2.0'
# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem 'turbo-rails', '~> 2.0.16'
# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem 'stimulus-rails', '~> 1.3.4'
# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem 'jbuilder', '~> 2.13.0'
# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
gem 'bcrypt', '~> 3.1.7'
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', '~> 1.2025.2', platforms: %i[windows jruby]
# Use the database-backed adapters for Action Cable
gem 'solid_cable', '~> 3.0.11'
# Database-based cache for Active Support
gem 'solid_cache', '~> 1.0.7'
# Database-based queueing backend for Active Job
gem 'solid_queue', '~> 1.2.1'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '~> 1.18.6', require: false
# Deploy this application anywhere as a Docker container [https://kamal-deploy.org]
gem 'kamal', '~> 2.7.0', require: false
# Add HTTP asset caching/compression and X-Sendfile acceleration to Puma [https://github.com/basecamp/thruster/]
gem 'thruster', '~> 0.1.14', require: false
# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', '~> 1.11.0', platforms: %i[mri windows], require: 'debug/prelude'

  # Static analysis for security vulnerabilities [https://brakemanscanner.org/]
  gem 'brakeman', '~> 7.1.0', require: false

  # Support for factories in tests
  gem 'factory_bot_rails', '~> 6.5.0'

  # Static analysis for code quality
  gem 'rubocop', '~> 1.79.0', require: false

  # Rubocop plugin for capybara
  gem 'rubocop-capybara', '~> 2.22.1', require: false

  # Rubocop plugin for factory bot
  gem 'rubocop-factory_bot', '~> 2.27.1', require: false

  # Rubocop plugin for performance checks
  gem 'rubocop-performance', '~> 1.25.0', require: false

  # Rubocop plugin for rails
  gem 'rubocop-rails', '~> 2.32.0', require: false

  # Rubocop plugin for rake
  gem 'rubocop-rake', '~> 0.7.1', require: false

  # Rubocop plugin for rspec specifically
  gem 'rubocop-rspec', '~> 3.6.0', require: false

  # Rubocop plugin for rspec rails integration
  gem 'rubocop-rspec_rails', '~> 2.31.0', require: false

  # Testing framework [https://rspec.info/]
  gem 'rspec-rails', '~> 6.0'
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem 'web-console', '~> 4.2.1'
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem 'capybara', '~> 3.40.0'

  # Webdriver for interacting with the browser.
  gem 'selenium-webdriver', '~> 4.34.0'
end
