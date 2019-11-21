# Importing Selenium Modules
from selenium import webdriver
from selenium.webdriver.common.keys import Keys

# Creating Variables 
user_name = "YOUR EMAILID"
password = "YOUR PASSWORD"

# Browser Details
driver = webdriver.Firefox()
driver.get("https://www.facebook.com")

# Elements Details 
element = driver.find_element_by_id("email")
element.send_keys(user_name)
element = driver.find_element_by_id("pass")
element.send_keys(password)
element.send_keys(Keys.RETURN)
element.close()