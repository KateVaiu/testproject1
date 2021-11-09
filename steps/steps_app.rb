And(/^application is started$/) do
  RunContext.appium_driver = AppiumDriver.new.start
end
