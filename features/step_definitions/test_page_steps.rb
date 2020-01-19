Then(/^user can see test_page elements$/) do
  p "Checking for test page HTML elements"
  WebDriver.find_element(:id, "input_field")
  p "- Found input field element."
  WebDriver.find_element(:id, "single_sel_field")
  p "- Found selection field (single) element."
  WebDriver.find_element(:id, "multi_sel_field")
  p "- Found selection field (multiple) element."
  WebDriver.find_element(:id, "button")
  p "- Found button element."
  WebDriver.find_element(:id, "dropdown")
  p "- Found dropdown field element."
  WebDriver.find_element(:id, "output_field")
  p "- Found output field element."
  p "All test page elements present."
end

When(/^user clicks on "([^"]*)" page_element$/) do |id|
  WebDriver.find_element(:id, id).click
  p id + " element clicked."
end

And(/^user inputs "([^"]*)" on "([^"]*)" page_element$/) do |text, id|
  WebDriver.find_element(:id, id).send_keys(text)
  p "Entered " + text + " into " + id + " page element."
end

Then(/^user can see "([^"]*)" on "([^"]*)" page_element$/) do |text, id|
  found_text = WebDriver.find_element(:id, id).text
  if found_text == text
    p "Text in element matches previous input."
  else
    p "Text in element does not match previous input."
  end
end


And(/^user clicks on "([^"]*)" in "([^"]*)" page_element$/) do |option, id|
  WebDriver.find_element(:xpath, "//select[@id='"+id+"']/option[text()='"+option+"']").click
  p "Clicked on option " + option + " in element " + id
end

 Then(/^user can see "([^"]*)" selected on "([^"]*)" page_element$/) do |option, id|
  String selected = WebDriver.find_element(:xpath, "//select[@id='"+id+"']/option[text()='"+option+"']").attribute("active")
  p selected
    p "Option " +option+ " is selected."
end