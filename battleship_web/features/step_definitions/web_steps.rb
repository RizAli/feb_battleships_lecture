Given(/^I am on the homepage$/) do
  visit('/homepage')
end

When(/^I follow "(.*?)"$/) do |link|
  click_button(link)
end

Then(/^I should see "(.*?)"$/) do |text|
  expect(page).to have_content text
end

When(/^I follow link "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Given(/^I am on the new game page$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^I am on the home page$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should stay on the same page$/) do
  pending # express the regexp above with the code you wish you had
end
