Given(/^I am on the Find Flight page$/) do
     page.driver.browser.manage.window.maximize
     visit ('http://newtours.demoaut.com/mercuryreservation.php')
end

When(/^Press continue$/) do
  xpath = 'html/body/div/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[5]/td/form/table/tbody/tr[14]/td/input'
  find(:xpath, xpath).click
end

When(/^I enter the required fields as show below here$/) do  |table|
  data = table.rows_hash
  data.each_pair do |key, value|
    case key
    	when "tripType:"
        	choose("tripType", option:  value)
      when "passCount"
          choose("passCount", option:  value)
      when "fromPort"
          select(value, :from => 'fromPort')
          @fromPort = value
      when "fromMonth"
          select(value, :from => 'fromMonth')
      when "fromDay"
          select(value, :form => 'fromDay')
      when "toPort"
          select(value, :from => 'toPort')
          @toPort = value
      when "toMonth"
          select(value, :from => 'toMonth')
      when "toDay"
          select(value, :from => 'toDay')
      when "servClass"
          choose("servClass", option:  value)
      when "airline"
          select(value, :from => 'airline')
      end
    end
end

Then(/^the flights are shown on the screen$/) do
  goingPorts = @fromPort+"to"+@toPort
  expect(page).to have_content(goingPorts)
end
