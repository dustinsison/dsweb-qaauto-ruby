# Instantiates the webdriver to be used globally

require 'selenium-webdriver'
require 'rspec/expectations'
include RSpec::Matchers

options = Selenium::WebDriver::Chrome::Options.new
#options.add_argument('--headless')
options.add_argument('--disable-gpu')
options.add_argument("--window-size=1920,1080")
options.add_argument("--start-maximized")
options.add_argument('--remote-debugging-port=9222')

WebDriver = Selenium::WebDriver.for :chrome, options: options