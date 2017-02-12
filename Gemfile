source 'https://rubygems.org'

#ruby version
ruby "~> 2.3.3"

gem 'rails', '4.2.7.1'
gem 'pg'
gem 'sass-rails', '~> 5.0.6'
gem 'sprockets-rails', '~> 3.2.0'
gem 'sprockets', '~> 3.7.0'
gem 'sprockets-es6', '~> 0.9.2'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'activeadmin', github: 'activeadmin' # Admin interface
gem 'active_admin_theme' # Theme up activeadmin a bit, flatter
gem 'devise'          # authentication
gem 'sidekiq'        # background jobs
gem 'puma' # webserver
gem 'skywalker'

## Asset bits
gem 'therubyracer'
gem 'haml'
gem "haml-rails", "~> 0.9"
gem 'foundation-rails', '~> 6.1.2.0'
gem 'foundation-icons-sass-rails'
gem 'neat', '~> 1.8.0'
gem 'gravtastic'
gem 'bourbon'
gem 'font-awesome-sass'
gem 'font-awesome-rails'
gem 'bootstrap', '~> 4.0.0.alpha6'

# Helpers for meta tags
gem 'meta-tags'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

group :development do
  gem 'pre-commit', require: false
  gem 'rubocop', require: false
  gem 'rack-mini-profiler' # nice window showing request problems on all pages
  gem 'better_errors'
  gem 'guard', require: false
  gem 'guard-livereload', require: false
  gem 'rack-livereload'
  gem 'web-console', '~> 2.0'
end

group :development, :test do
  gem 'brakeman', require: false
  gem 'byebug'
  gem 'pry'
  gem 'factory_girl_rails'
  gem 'faker', '~> 1.7.1'
  gem 'rspec'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'shoulda-callback-matchers', '~> 1.1.1'
  gem 'stripe-ruby-mock', '~> 2.1.1', require: 'stripe_mock'
  gem 'spinach-rails'
end

group :test do
  gem 'puffing-billy'
  gem 'thin'
  gem 'capybara'
  gem 'chromedriver-helper'
  gem 'database_cleaner'
  gem 'launchy', require: false
  gem 'selenium-webdriver'
  gem 'poltergeist'
  gem 'webmock'
  gem 'simplecov', require: false
  gem 'simplecov-json', require: false
  gem 'simplecov-rcov', require: false
end

# This is necessary just for Heroku hosting
group :production do
  ## Application Monitoring
  gem 'skylight', '1.0.1'
end
group :production, :staging do
  ## Enable rack timeouts
  gem 'rack-timeout'

  gem 'rails_12factor'
  gem 'bugsnag' # bugsnag.com
end
