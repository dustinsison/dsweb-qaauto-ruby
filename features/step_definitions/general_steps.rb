# Instantiates the webdriver to be used globally

require 'selenium-webdriver'
require 'rspec/expectations'
include RSpec::Matchers

options = Selenium::WebDriver::Chrome::Options.new
  options.add_argument('--headless')
  options.add_argument('--disable-gpu')
  options.add_argument("--window-size=1920,1080")
  options.add_argument("--start-maximized")
  options.add_argument('--remote-debugging-port=9222')

WebDriver = Selenium::WebDriver.for :chrome, options: options

Given(/^user is on the homepage$/) do
  WebDriver.navigate.to "https://dustinsison.com/"
  p "Initializing test on homepage"
end

And(/^browser goes back$/) do
  ## Commands the browser to go back a page
  WebDriver.navigate.back
  p "- Navigating back one page"
  # Wait 2 seconds
  sleep(2)
end

Given(/^user is on any page$/) do
  ## Array of various pages
  String pages = ["","about-me","lavadrop","category/personal-log","category/projects-log"]

  ## Selects a random page from array
  String random = pages.sample

  ## Opens WebDriver to random page
  WebDriver.navigate.to "https://dustinsison.com/" + random
  p "Initiating automated test. Opened browser to randomly selected page, dustinsison.com/" + random
end

Given(/^user is on "([^"]*)" page$/) do |arg|
  ## Navigate to specified page
  WebDriver.navigate.to "https://dustinsison.com/" + arg
  p "Initiating automated test. Opened browser to page, dustinsison.com/" + arg
end