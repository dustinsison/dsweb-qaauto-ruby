Then(/^user should see "([^"]*)" project page header$/) do |arg|
  if WebDriver.find_element(:tag_name, "h1").text == arg
    String result = WebDriver.find_element(:tag_name, "h1").text
    p "- Current page: " + result
  else
    String result = WebDriver.find_element(:tag_name,"h1").text
    p "- Current page: " + result
  end
end