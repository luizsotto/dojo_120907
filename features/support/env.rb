require 'rspec'
require 'cucumber'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'pry'
require 'site_prism'

Capybara.register_driver :selenium do |app|
	capabilities = Selenium::WebDriver::Remote::Capabilities.chrome('chromeOptions' => { 'args' =>['--start-maximized']})
	Capybara::Selenium::Driver.new(app, :browser => :chrome, desired_capabilities: capabilities)
end

Capybara.default_driver = :selenium

Capybara.default_max_wait_time = 15

#Capybara.page.driver.browser.manage.window.maximize
