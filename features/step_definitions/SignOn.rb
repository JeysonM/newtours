

#------------------------------------------------------------

Given(/^I enter my user and password wrongs$/) do
  fill_in 'userName', :with => "Pepon"
  fill_in 'password', :with => "IDon'tKnow"
end

Given(/^I enter my user and password empty$/) do
  fill_in 'userName', :with => ""
  fill_in 'password', :with => ""
end

Then(/^the Sign On screen is show$/) do
  expect(page).to have_content("Welcome back to Mercury Tours!")
end
