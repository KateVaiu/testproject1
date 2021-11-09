class AppiumDriver
  attr_accessor :driver

  def start(caps = {})
    desired_caps = {
      platformName:         'Android',
      platformVersion:      RunContext.android_version,
      app:                  'artifacts/loginapp.apk',
      allowTestPackages:    true,
    }

    desired_caps.merge!(caps)

    @driver = Appium::Driver.new({ 'caps' => desired_caps }, false).start_driver
  end

  def quit
    @driver.quit
  end
end
