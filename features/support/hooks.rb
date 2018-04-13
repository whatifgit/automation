
Before do
  #@browser = Selenium::WebDriver.for :chrome
  options = Selenium::WebDriver::Chrome::Options.new
  options.add_argument('--headless')
  @browser = Selenium::WebDriver.for :chrome, options: options
  p "Browser initialized for environment"
#  @browser.maximize
end


After do |scenario|
    @browser.close
end
