When(/^user clicks "([^"]*)" navigation link$/) do |arg|
  ## Gives 5 seconds for the navigation menu to load
  sleep(5)

  WebDriver.find_element(:xpath, "//ul[@id='primary-menu']/li/a[normalize-space(text())='"+arg+"']")

  # ## Wait for listed navigation link to be clickable, then click it.
  # navwait = Selenium::WebDriver::Wait.new(:timeout => 10)
  #
  # navwait.until {
  # element = WebDriver.find_element(:xpath, "//ul[@id='primary-menu']/li/a[normalize-space(text())='"+arg+"']")
  #   element.click
  # }

  p "- Clicked " + arg + " navigation link"
end

Then(/^user should see "([^"]*)" header$/) do |arg|
  if WebDriver.find_element(:tag_name, "h1").text == arg
    String result = WebDriver.find_element(:tag_name, "h1").text
    p "- Current page: " + result
  else
    String result = WebDriver.find_element(:tag_name,"h1").text
    p "- Current page: " + result
  end
end

When(/^user hovers over "([^"]*)" navigation link$/) do |arg|
  sleep(3)

  ## Finds navigation link to hover over
  dropdown = WebDriver.find_element(:id, "menu-item-75")

  ## Hovers over selected navigation link
  WebDriver.action.move_to(dropdown).perform

  p "- Hovering over " + arg + " navigation link"

  ## Gives two seconds for the submenu to load
  sleep(2)
end

And(/^user clicks "([^"]*)" subnavigation link$/) do |arg|
  ## Clicks specified subnavigation link
  WebDriver.find_element(:id, "menu-item-28").click
  p "Clicking " + arg + " subnavigation link"
end