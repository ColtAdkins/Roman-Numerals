require 'watir'
Selenium::WebDriver::Firefox.driver_path = File.absolute_path(File.dirname(__FILE__)) + '/geckodriver.exe'
browser = Watir::Browser.new :firefox

browser.goto 'bit.ly/manifest-watir-survey2'
browser.text_field(:class => 'quantumWizTextinputPaperinputInput exportInput').set 'Colton Adkins'
browser.select(:class => 'quantumWizTogglePapercheckboxInnerBoxexportInnerBox').checkbox 'Ruby'
browser.button(:name => 'submit').click
sleep 2
puts browser.url
puts browser.text
expect(browser.text).to include 'Thank you'
browser.close