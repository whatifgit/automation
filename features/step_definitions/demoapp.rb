Given(/^I am on the login page$/) do
  nav
end

When(/^I fill in user id$/) do

  fillin_userid
end

And(/^I fill in password$/) do
  fillin_password
end

And(/^I submit login button$/) do
  form_submit
end

Then(/^I should be on the users home page$/) do
  home_page
end

=begin
And(/^I should see "([^"]*)"$/) do |arg|
  pending
end
=end
