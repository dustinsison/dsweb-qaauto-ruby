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
  # Adds 2 second wait for headless mode
  sleep(2)
end

Then(/^user should see "([^"]*)" profile$/) do |arg|
  # Pulls in test data for profile page titles
  profile_title = dsweb_test_data['social_media_page_title']
  # Checks which profile is displayed, and validates that with the requested profile
  if WebDriver.title == profile_title[arg]
    p "- " + arg + " profile page verified"
  else
    p "- " + arg + " profile page not verified; please manually check this link"
    p "-- " + WebDriver.title
  end
end

When(/^user can see email_link in footer$/) do
  ## Pulls the Email link in the footer
  String mailto = WebDriver.find_element(:xpath, "//ul[@id='footer-menu']/li[4]/a").attribute("href")
  ## Verifies that the email link is in the expected "mailto" format
  if mailto == "mailto:dsison34@gmail.com"
    p "- Seeing expected email link: " + mailto
  else
    p "- Error - Unexpected link: " + mailto
  end
end