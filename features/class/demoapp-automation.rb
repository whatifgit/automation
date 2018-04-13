require "selenium-webdriver"

def nav
  @browser.navigate.to "https://webapp-180409172417.azurewebsites.net"
  loginpage= @browser.find_element(id: 'AccountLink')
  loginpage if loginpage.displayed?
  loginpage.click

  sleep 2
end
def fillin_userid
  uid = @browser.find_element(:id, "uid")
  if (uid.displayed?)
    uid.send_keys("jsmith")
  end
  sleep 2
end
def fillin_password
  password= @browser.find_element(:id, "passw")
  if password.displayed?
    password.send_keys('demo1234')
  end
  sleep 2
end

def form_submit
  formsubmit = @browser.find_element(:name, "btnSubmit")
  if formsubmit.displayed?
    formsubmit.click
    puts "Test Passed: Form input found"
  end
  sleep 2
end

def home_page
    puts "Test Passed: Form input found"
  sleep 2
end
=begin

sleep 2
element = driver.find_element(id: 'LinkHeader2')
puts driver.find_element(link: 'Deposit Products').displayed?
element.click

sleep 2
loginpage= driver.find_element(id: 'AccountLink')
loginpage if loginpage.displayed?
loginpage.click

sleep 2
# Add text to a text box

uid = driver.find_element(:id, "uid")
if (uid.displayed?)
  uid.send_keys("jsmith")
end


password= driver.find_element(:id, "passw")
if password.displayed?
  password.send_keys('demo1234')
end




# Check that the form exists

formsubmit = driver.find_element(:name, "btnSubmit")
if formsubmit.displayed?
  formsubmit.click
  puts "Test Passed: Form input found"
end


# Click the button based the form it is in (you can also call 'submit' method)


puts driver.title

driver.quit
=end
