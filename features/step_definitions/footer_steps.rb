Then(/^user sees expected footer content$/) do
  p "Checking footer links..."
  ## Checks for Twitter link in footer
  if WebDriver.find_element(:xpath, "//ul[@id='footer-menu']/li[1]/a").text == "Twitter"
    p "- Twitter footer link Verified"
  else
    p "- Twitter footer link not found"
  end
  ## Checks for GitHub link in footer
  if WebDriver.find_element(:xpath, "//ul[@id='footer-menu']/li[2]/a").text == "GitHub"
    p "- GitHub footer link Verified"
  else
    p "- GitHub footer link not found"
  end
  ## Checks for LinkedIn link in footer
  if WebDriver.find_element(:xpath, "//ul[@id='footer-menu']/li[3]/a").text == "LinkedIn"
    p "- LinkedIn footer link Verified"
  else
    p "- LinkedIn footer link not found"
  end
  ## Checks for Email link in footer
  if WebDriver.find_element(:xpath, "//ul[@id='footer-menu']/li[4]/a").text == "Email"
    p "- Email footer link Verified"
  else
    p "- Email footer link not found"
  end
end

When(/^user clicks "([^"]*)" footer link$/) do |arg|
  # Clicks on the specified footer link
  WebDriver.find_element(:xpath, "//ul[@id='footer-menu']/li/a[normalize-space(text())='"+arg+"']").click
  p "- Clicked on " + arg + " footer link"
  # Adds 3 second wait for headless mode
  sleep(3)
end

Then(/^user should see "([^"]*)" profile$/) do |arg|
  # Checks which profile is displayed, and validates that with the requested profile
  if arg == "Twitter"
    String expectedTitle = "Dustin Sison (@XMasterPrime) | Twitter"
    String actualTitle = WebDriver.title
    if actualTitle == expectedTitle
      p "- Twitter profile page verified"
    else
      p "- Twitter profile page not verified; please manually check this link"
      p "-- " + actualTitle
    end
  elsif arg == "GitHub"
    String expectedTitle = "dustinsison (Dustin Sison) · GitHub"
    String actualTitle = WebDriver.title
    if actualTitle == expectedTitle
      p "- GitHub profile page verified"
    else
      p "- GitHub profile page not verified; please manually check this link"
      p "-- " + actualTitle
    end
  elsif arg == "LinkedIn"
    String expectedTitle = "Dustin Sison - Automation Engineer - Moovweb | LinkedIn"
    String actualTitle = WebDriver.title
    if actualTitle == expectedTitle
      p "- LinkedIn profile page verified"
    else
      p "- LinkedIn profile page not verified; please manually check this link"
      p "-- " + actualTitle
    end
  end
end

When(/^user should see "([^"]*)" footer link$/) do |arg|
  ## Pulls the Email link in the footer
  String mailto = WebDriver.find_element(:xpath, "//ul[@id='footer-menu']/li[4]/a").attribute("href")
  ## Verifies that the email link is in the expected "mailto" format
  if mailto == "mailto:dsison34@gmail.com"
    p "- Seeing expected email link: " + mailto
  else
    p "- Error - Unexpected link: " + mailto
  end
end