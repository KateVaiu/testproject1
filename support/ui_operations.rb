class UIOperations
  def find_element(id, package = Constants::APP_PACKAGE)
    RunContext.appium_driver.find_element(:id, "#{package}:id/#{id}")
  end

  def element_displayed?(id)
    find_element(id).displayed?
  end

  def enter_text(id:, text:)
    find_element(id).send_keys(text)
  end

  def delete_text(id:)
    find_element(id).clear
  end

  def tap_element(id)
    find_element(id).click
  end

  def element_description(id)
    find_element(id)['content-desc']
  end

  def element_text(id)
    find_element(id).text
  end
end
