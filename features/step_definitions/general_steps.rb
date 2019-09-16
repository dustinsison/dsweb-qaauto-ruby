# Instantiates the webdriver to be used globally
WebDriver = Selenium::WebDriver.for :chrome

Given(/^user is on the homepage$/) do
  WebDriver.navigate.to "https://dustinsison.com/"
  p "Initializing test on homepage"
end

And(/^browser goes back$/) do
  WebDriver.navigate.back
  p "Navigating back one page"
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