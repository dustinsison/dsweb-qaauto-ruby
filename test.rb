# require 'selenium-webdriver'
# driver = Selenium::WebDriver.for :chrome
# driver.navigate.to "http://mock.agiletrailblazers.com/"
# driver.find_element(:id, 's').send_keys("agile")
# driver.find_element(:id, 'submit-button').click
#
# wait = Selenium::WebDriver::Wait.new(:timeout => 5) # seconds
#
# begin
#   element = wait.until { driver.find_element(:id => "search-title") }
#   element.text.include? 'Search Results for: agile'
#   p "Valid"
# ensure
#   driver.quit
# end