Given(/^I visit the WATiR site$/) do
  @browser.goto 'bit.ly/manifest-watir-survey2'
end
When(/^I run the program and submit information$/) do
  @browser.text_field(:class )
  @browser.select_list
  @browser.button(:name => 'submit').click
  sleep 2
end
Then(/^I get a thanks at the end$/) do
  expect(@browser.text).to include 'Thank you'
end