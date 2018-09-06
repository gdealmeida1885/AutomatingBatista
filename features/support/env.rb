require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'faker'

Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, :broswer => :chrome)
end

Capybara.default_driver = :selenium_chrome
Capybara.page.driver.browser.manage.window.maximize
Capybara.default_max_wait_time = 10