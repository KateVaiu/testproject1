module Pages
  class BasePage
    def current_page?
      raise "Not implemented"
    end

    def await
      wait_params = {timeout: 10, timeout_message: "Page await failed. Expected page: #{self.class}"}
      Wait.until(wait_params) { current_page? }
      self
    end

    protected def ui
      @ui ||= UIOperations.new
    end
  end
end