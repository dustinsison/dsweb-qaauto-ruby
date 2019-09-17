require 'selenium-webdriver'

Given(/^user is on login page$/) do
  WebDriver.navigate.to "https://dustinsison.com/wp-login.php"
  p "Opened browser to login page"
end

When(/^user clicks to sign\-in with credentials$/) do
  WebDriver.find_element(:xpath, "//div/form/div/a").click
  p "- Clicked on 'Sign in with credentials'"
end

When(/^user inputs "([^"]*)" in username field$/) do |arg|
  # Enters username in username field
  WebDriver.find_element(:id, "user_login").send_keys(arg)
  p "- Entered " + arg + " in the username field"
end

And(/^user inputs "(.*?)" in password field$/) do |arg|
  # Enters password in password field
  WebDriver.find_element(:id, "user_pass").send_keys(arg)
  p "- Entered " + arg + " in the password field"
end

And(/^user clicks sign\-in button$/) do
  # Submits entered username / password
  WebDriver.find_element(:id, "wp-submit").click
  p "- Clicked on the Sign-in button"
end

Then(/^user should see "([^"]*)" page header$/) do |arg|
  # Searches for page header, and matches it with passed argument
  String result = WebDriver.find_element(:xpath, "//div[@id='profile-page']/h1").text
  if result == arg
      p "- Log in appears successful. Appearing on the " + arg + " page."
  elsif result != arg
      p "- Log in issue; Appearing to be on " + result + " page instead of " + arg
  end
end

Then(/^user should see login "([^"]*)" error message$/) do |arg|
  String error_result1 = WebDriver.find_element(:xpath, "//div[@id='login_error']/strong").text
  String error_result2 = WebDriver.find_element(:xpath, "//div[@id='login_error']").text
  if error_result1 == arg
    p "- Expected log-in error is displayed: " + error_result2
  elsif error_result1 != arg
    p "- Unexpected result for invalid log-in test"
  end
end

Then(/^user logs out$/) do
  dropdown = WebDriver.find_element(:id, "wp-admin-bar-my-account")
  WebDriver.action.move_to(dropdown).perform
  sleep(1)
  WebDriver.find_element(:id, "wp-admin-bar-logout").click
  p "- Clicked 'Log Out' link"
end