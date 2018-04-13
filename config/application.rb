require File.expand_path('boot', __dir__)

require 'rails/all'

module TestApp
  class Application < Rails::Application
    config.active_record.sqlite3.represent_boolean_as_integer = true
  end
end
