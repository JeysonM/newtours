

After do
    Capybara.current_session.driver.quit
end

After do |scenario|
  if (scenario.failed?)
    page.driver.browser.save_screenshot("#{scenario.__id__}.png")
    embed("#{scenario.__id__}.png", "image/png","Screenshoot failed scenario")
  end



Before '@maximize' do
  page.driver.browser.manage.window.maximize
end
