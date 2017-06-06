Given(/^I am on the Find Flight page$/) do
     page.driver.browser.manage.window.maximize
     visit ('http://newtours.demoaut.com/mercuryreservation.php')
end

Given(/^I am a user on the Mercury Tours homepage$/) do
     page.driver.browser.manage.window.maximize
     visit ('http://newtours.demoaut.com/')
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

Then(/^the going flights are shown on the screen as follows$/) do  |table|
  data = table.rows_hash
  goingPorts = @fromPort+"to"+@toPort
  expect(page).to have_content(goingPorts)
  rowPricesCounter = 4
  divAerloinesCounter = 3
  xpathBase = 'html/body/div[1]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[5]/td/form/table[1]/tbody/'
  xpathBase = find(:xpath, xpathBase)
  xpathGrandTotalPrices = './tr[%i]/td/font/font/b'
  xpathGrandTotalAerolines = '/tr[%i]/td[2]/font/b'
  data.each_pair do |key, value|
        expect(xpathBase.find(:xpath, xpathGrandTotalPrices % [rowPricesCounter])).to have_content(value)
        rowPricesCounter += 2
  end
  data.each_pair do |key, value|
        expect(xpathBase.find(:xpath, xpathGrandTotalAerolines % [divAerloinesCounter])).to have_content(key)
        divAerloinesCounter += 2
  end
end


Then(/^the back flights are shown on the screen as follows$/) do  |table|
  data = table.rows_hash
  goingPorts = @fromPort+"to"+@toPort
  expect(page).to have_content(goingPorts)
  rowPricesCounter = 4
  divAerloinesCounter = 3
  xpathBase = 'html/body/div[1]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[5]/td/form/table[2]/tbody'
  xpathBase = find(:xpath, xpathBase)
  xpathGrandTotalPrices = './tr[%i]/td/font/font/b'
  xpathGrandTotalAerolines = '/tr[%i]/td[2]/font/b'
  data.each_pair do |key, value|
        expect(xpathBase.find(:xpath, xpathGrandTotalPrices % [rowPricesCounter])).to have_content(value)
        rowPricesCounter += 2
  end
  data.each_pair do |key, value|
        expect(xpathBase.find(:xpath, xpathGrandTotalAerolines % [divAerloinesCounter])).to have_content(key)
        divAerloinesCounter += 2
  end
end
