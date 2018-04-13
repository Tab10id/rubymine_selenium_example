ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../config/environment', __dir__)
require 'rspec/rails'
require 'capybara/rspec'
require 'capybara/rails'
require 'selenium-webdriver'

RSpec.configure do |config|
  config.pattern = '**/*_spec.rb'
  config.include Capybara::DSL
end

Capybara.register_driver :selenium do |app|
  options = Selenium::WebDriver::Firefox::Options.new
  if ENV['FIREFOX_BINARY_PATH']
    Selenium::WebDriver::Firefox::Binary.path = ENV['FIREFOX_BINARY_PATH']
  end

  client = Selenium::WebDriver::Remote::Http::Default.new

  Capybara::Selenium::Driver.new(
    app,
    options: options,
    port: 4451,
    http_client: client
  )
end
