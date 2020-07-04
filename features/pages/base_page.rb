require 'appium_lib_core'

class BasePage

  def open_app
    $driver.start_driver
  end

  def _find(element)
    locator = element.keys[0].to_s
    selector = element.values[0].to_s
    puts "looking for #{element}..."
    $driver.find_element(locator, selector)
  end
end
