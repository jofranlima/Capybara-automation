require "capybara"
#require "capybara/cucumber"
require "site_prism"


require 'capybara/dsl'
require 'capybara/rspec/matchers'


World(Capybara::DSL)
World(Capybara::RSpecMatchers)


Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = "https://beta.coodesh.com"
    config.default_max_wait_time = 50
end