require 'watir'
Selenium::WebDriver::Firefox.driver_path = File.absolute_path(File.dirname(__FILE__)) + '/../geckodriver-v0.24.0-win64/geckodriver.exe'

Before do |scenario|
  @browser = Watir::Browser.new :firefox
end
After do |scenario|
  @browser.close
end