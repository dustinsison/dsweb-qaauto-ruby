require 'selenium-webdriver'

Given(/^user is on "(.*?)" blog page$/) do |arg|
  # Opens browser to specified blog page
  WebDriver.navigate.to "https://dustinsison.com/category" + arg
end

Then(/^user should see "([^"]*)" blog listing page$/) do |arg|

  # Gives 1 second for blog entries to load
  sleep(1)

  # Searches for page header, and matches it with passed argument
  String result = WebDriver.find_element(:class, "page-title").text
  if result == arg
    p "Correct blog page is displayed; currently on the " + arg + " page."
  elsif result != arg
    p "Incorrect page; Appearing to be on " + result + " page instead of " + arg + " page."
  end

end

And(/^user clicks on "([^"]*)" blog link$/) do |arg|
  WebDriver.find_element(:xpath, "//ul[@id='primary-menu']/li/a[normalize-space(text())='"+arg+"']").click
end

When(/^user clicks first blog title$/) do
  sleep(1)
  WebDriver.find_element(:xpath, "//header/h2[@class='entry-title'][1]/a").click
end

Then(/^user should see blog entry page$/) do
  if expect(WebDriver.find_element(:class, "entry-header"))
    String result = WebDriver.find_element(:class, "entry-title").text
    p "Test passed; Appearing to be on " + result + " blog entry page"
  else
    String result = WebDriver.find_element(:class, "entry-title").text
    p "Test failed; Appearing to be on " + result + " page"
  end
end