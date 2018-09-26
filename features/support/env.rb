require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'faker'
require 'site_prism'
require 'pry'


Capybara.configure do |c|
  Capybara.default_driver = :selenium_chrome
  Capybara.page.driver.browser.manage.window.maximize
  Capybara.default_max_wait_time = 10
  Capybara.app_host = "http://automacaocombatista.herokuapp.com"
end
