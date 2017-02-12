ENV['RAILS_ENV'] = 'test'
require 'simplecov'

require './config/environment'
require 'rspec'
require 'spinach/capybara'
require 'spinach/frameworks/rspec'
require 'sidekiq/testing'
Sidekiq::Testing.fake!
# require 'mandrill_mailer/offline' # Don't really send emails with mandrill_mailer
require 'webmock'
require 'database_cleaner'
DatabaseCleaner.strategy = :truncation

require 'capybara/poltergeist'
Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(app,
    js_errors: false)
end
Capybara.javascript_driver = :poltergeist

# require 'selenium-webdriver'
# Capybara.register_driver :selenium do |app|
#   Capybara::Selenium::Driver.new(app, :browser => :chrome)
# end

# Capybara.javascript_driver = :selenium

# Spinach.hooks.after_run do
#   StripeMock.kill_server(StripeMock.default_server_pid_path)
# end

Spinach.hooks.before_scenario do
  WebMock.disable_net_connect!(allow_localhost: true)
  DatabaseCleaner.clean
  # StripeMock.start
  # stripe_helper = StripeMock.create_test_helper
  # stripe_helper.create_plan(id: 'silver', amount: 900)
end

# Spinach.hooks.after_scenario do
#   StripeMock.stop
# end

Spinach.hooks.on_tag('javascript') do
  ::Capybara.current_driver = ::Capybara.javascript_driver
end

Spinach.config.save_and_open_page_on_failure = true
