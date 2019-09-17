# encoding: UTF-8

require_relative 'actionwords'
World(Actionwords)

Then /^user should see "(.*)" project page header$/ do |p1|
  user_should_see_p1_project_page_header(p1)
end

Then /^user should see homepage header$/ do
  user_should_see_homepage_header
end

Then /^user should see expected homepage video content$/ do
  user_should_see_expected_homepage_video_content
end

Given /^user is on the homepage$/ do
  user_is_on_the_homepage
end

Then /^browser goes back$/ do
  browser_goes_back
end

Given /^user is on any page$/ do
  user_is_on_any_page
end

Given /^user is on "(.*)" page$/ do |p1|
  user_is_on_p1_page(p1)
end

Given /^user is on login page$/ do
  user_is_on_login_page
end

When /^user clicks to sign\\-in with credentials$/ do
  user_clicks_to_signin_with_credentials
end

When /^user inputs "(.*)" in username field$/ do |p1|
  user_inputs_p1_in_username_field(p1)
end

When /^user inputs "(.*)" in password field$/ do |p1|
  user_inputs_p1_in_password_field(p1)
end

When /^user clicks sign\\-in button$/ do
  user_clicks_signin_button
end

Then /^user should see "(.*)" page header$/ do |p1|
  user_should_see_p1_page_header(p1)
end

Then /^user should see login "(.*)" error message$/ do |p1|
  user_should_see_login_p1_error_message(p1)
end

Then /^user logs out$/ do
  user_logs_out
end

Then /^user sees expected footer content$/ do
  user_sees_expected_footer_content
end

When /^user clicks "(.*)" footer link$/ do |p1|
  user_clicks_p1_footer_link(p1)
end

Then /^user should see "(.*)" profile$/ do |p1|
  user_should_see_p1_profile(p1)
end

When /^user should see "(.*)" footer link$/ do |p1|
  user_should_see_p1_footer_link(p1)
end

Given /^user is on "(.*)" blog page$/ do |p1|
  user_is_on_p1_blog_page(p1)
end

Then /^user should see "(.*)" blog listing page$/ do |p1|
  user_should_see_p1_blog_listing_page(p1)
end

Then /^user clicks on "(.*)" blog link$/ do |p1|
  user_clicks_on_p1_blog_link(p1)
end

When /^user clicks first blog title$/ do
  user_clicks_first_blog_title
end

Then /^user should see blog entry page$/ do
  user_should_see_blog_entry_page
end

When /^user clicks "(.*)" navigation link$/ do |p1|
  user_clicks_p1_navigation_link(p1)
end

Then /^user should see "(.*)" header$/ do |p1|
  user_should_see_p1_header(p1)
end

When /^user hovers over "(.*)" navigation link$/ do |p1|
  user_hovers_over_p1_navigation_link(p1)
end

When /^user clicks "(.*)" subnavigation link$/ do |p1|
  user_clicks_p1_subnavigation_link(p1)
end
