Before do
  RunContext.device = Device.new
  RunContext.android_version = RunContext.device.android_version
  RunContext.device.press_home
end

After do
  RunContext.appium_driver.quit
end
