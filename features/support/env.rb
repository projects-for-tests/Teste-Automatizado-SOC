require "capybara"
require "capybara/cucumber"
require 'allure-cucumber'

Capybara.configure do |config|
config.default_driver = :selenium_chrome

end


Cucumber::Core::Test::Step.module_eval do
   def name
     return text if text == 'Before hook'
     return text if text == 'After hook'
     "#{source.last.keyword}#{text}"
   end
end