Given(/^I am on the Mercury Tours homepage$/) do
     page.driver.browser.manage.window.maximize
     visit ('http://newtours.demoaut.com/')
end

Given(/^I click the "([^"]*)" link$/) do |linkText|
  click_link(linkText)
end

When(/^I enter the required fields as show below$/) do |table|
  data = table.rows_hash
  data.each_pair do |key, value|
    case key
	when "First Name:"
    	fill_in 'firstName', :with => value
    	@name = value
	when "Last Name:"
		fill_in 'lastName', :with => value
		@lastName = value
    when "Phone:"
		fill_in 'phone', :with => value
    when "Email:"
		fill_in 'userName', :with => value
	when "Address:"
		fill_in 'address1', :with => value
	when "City:"
		fill_in 'city', :with => value
	when "State/Province:"
		fill_in 'state', :with => value
	when "Postal Code:"
		fill_in 'postalCode', :with => value
	when "Country:"
		select(value, :from => 'country')
	when "User Name:"
		fill_in 'email', :with => value
		@userName = value
	when "Password:"
		fill_in 'password', :with => value
	when "Confirm Password:"
		fill_in 'confirmPassword', :with => value
		@password = value
	end
  end
end

When(/^send my registration form$/) do
  xpath_base = '/html/body/div/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[5]/td/form/table/tbody/tr[18]/td/input'
  find(:xpath, xpath_base).click
end

Then(/^the confirmation screen is show$/) do
  greeting = "Dear"+" "+@name+" "+@lastName
  expect(page).to have_content(greeting)

end

Then(/^my user name is "([^"]*)"$/) do |userName|
  text= " Note: Your user name is "+userName+"."
  expect(page).to have_content(text)
end

Given(/^I enter my user and password$/) do
  fill_in 'userName', :with => ENV['USER']
  fill_in 'password', :with => ENV['PSW']
end

When(/^I press the "([^"]*)" button$/) do |arg1|
  xpath = '/html/body/div/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[2]/td[3]/form/table/tbody/tr[4]/td/table/tbody/tr[4]/td[2]/div/input'
  find(:xpath, xpath).click
end

Then(/^the Flight Finder screen is show$/) do
  expect(page).to have_content("Flight Details")
end

When(/^I press the Submit button$/) do
  xpath = '/html/body/div/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[5]/td/form/table/tbody/tr[4]/td/input'
  find(:xpath, xpath).click
end
