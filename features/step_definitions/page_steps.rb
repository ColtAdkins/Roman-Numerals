include PageObject::PageFactory

Given(/^I visit the WATiR site using page$/) do
  visit_page Survey
end
When(/^I run the program and submit information using page$/) do
  on_page Survey do |page|
    page.name = 'Colton Adkins'
    page.language = 'Ruby'
    page.submit
  end
  sleep 2
end
Then(/^I get a big thanks utilizing pages$/) do
  on_page SurveyResult do |page|
    expect(page.response).to include 'Thank you'
  end
end