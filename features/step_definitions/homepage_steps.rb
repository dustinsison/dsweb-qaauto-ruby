Then(/^user should see homepage header$/) do
  if WebDriver.find_element(:tag_name, "h1").text == "Welcome"
    String result = WebDriver.find_element(:tag_name, "h1").text
    p "- Current page: " + result
  else
    String result = WebDriver.find_element(:tag_name,"h1").text
    p "- Current page: " + result
  end
end

And(/^user should see expected homepage video content$/) do

  ## Gives five seconds for the homepage video to load
  sleep(5)

  ## Checks if the HD video is displaying
  if WebDriver.find_element(:class, "fluid-width-video-wrapper").displayed? == true
    p "- HD header video is displaying"
  else
    p "- HD header video is not displaying"
  end
end