Given(/^I am on the Find Flight page$/) do
     page.driver.browser.manage.window.maximize
     visit ('http://newtours.demoaut.com/mercuryreservation.php')
end

When(/^press continue$/) do
  click_on("findFlights")
end

When(/^I enter the required fields as show below here$/) do
  data = table.rows_hash
  data.each_pair do |key, value|
    case key
    	when "tripType:"
        	choose("tripType", option:  value)
      when "passCount"
          choose("passCount", option:  value)
      when "fromPort"
          select(value, :from => 'fromPort')
      when "fromMonth"
          select(value, :from => 'fromMonth')
      when "fromDay"
          select(value, :form => 'fromDay')
      when "toPort"
          select(value, :from => 'toPort')
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
