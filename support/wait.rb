module Wait
  def self.until(timeout: nil, timeout_message:nil)
    wait_params = {message: timeout_message}
    wait_params[:timeout] = timeout if timeout # default timeout is 5 seconds

    Selenium::WebDriver::Wait.new(message: timeout_message).until { yield }
  end
end
