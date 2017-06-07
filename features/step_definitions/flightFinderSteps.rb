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
        	choose('tripType', option:  value)
      when "passCount:"
          select(value, :from => 'passCount')
      when "fromPort:"
          select(value, :from => 'fromPort')
          @fromPort = value
      when "fromMonth:"
          select(value, :from => 'fromMonth')
      when "fromDay:"
          select(value, :from => 'fromDay')
      when "toPort:"
          select(value, :from => 'toPort')
          @toPort = value
      when "toMonth:"
          select(value, :from => 'toMonth')
      when "toDay:"
          select(value, :from => 'toDay')
      when "servClass:"
          choose("servClass", option:  value)
      when "airline:"
          select(value, :from => 'airline')
      end
    end
end

Then(/^the going flights are shown on the screen as follows$/) do  |table|
  data = table.rows_hash
  goingPorts = ""+@fromPort+" to "+@toPort
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
  goingPorts = ""+@toPort+" to "+@fromPort
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

Then(/^I press the continue button down$/) do
  xpath = 'html/body/div/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[5]/td/form/p/input'
  find(:xpath, xpath).click
end



Then(/^the flights and prices are shown on the screen as follows$/) do |table|
  data = table.rows_hash
  data.each_pair do |key, value|
        expect(page).to have_content(value)
  end
  data.each_pair do |key, value|
        expect(page).to have_content(key)
  end
end

Then(/^the price with taxes is shown$/) do
  expect(page).to have_content("$584")
end

Then(/^I fill the buy form with the following values$/) do |table|
  data = table.rows_hash
  data.each_pair do |key, value|
    case key
      when "passFirst0"
        fill_in 'passFirst0', :with => value
        @passFirstname = value
      when "passLast0"
        fill_in 'passLast0', :with => value
        @passLastname = value
      when "creditnumber"
        fill_in 'creditnumber', :with => value
        @creditNumber = value
      when "cc_frst_name"
        fill_in 'cc_frst_name', :with => value
        @creditFirstName = value
      when "cc_mid_name"
        fill_in 'cc_mid_name', :with => value
        @creditMidName = value
      when "cc_last_name"
        fill_in 'cc_last_name', :with => value
        @creditLastName = value
      when "billAddress1"
        fill_in 'billAddress1', :with => value
        @billAddress = value
      when "delAddress1"
        fill_in 'delAddress1', :with => value
        @delAddress = value
      end
    end
end

Then(/^I press the Secure purchase button for confirm$/) do
  xpath = 'html/body/div[1]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[5]/td/form/table/tbody/tr[23]/td/input'
  find(:xpath, xpath).click
end

Then(/^the Itinerary booked message is shown$/) do
  expect(page).to have_content("Your  itinerary has been booked!")
end

Then(/^the values inserted for the are shown$/) do
  expect(page).to have_content(@passFirstname)
  expect(page).to have_content(@passLastname)
  expect(page).to have_content(@creditNumber)
  expect(page).to have_content(@creditFirstName)
  expect(page).to have_content(@creditMidName)
  expect(page).to have_content(@creditLastName)
  expect(page).to have_content(@billAddress)
  expect(page).to have_content(@delAddress)
end
