require "selenium-webdriver"
require "rspec"

# TEST: Sign up for blog
describe "Blog application" do

  describe "signup to the blog application" do
    it "confirm that a user can successfully signup" do
      timestamp = Time.now.to_i
      driver = Selenium::WebDriver.for :firefox
  		# Go to signup form
  		driver.navigate.to "https://www.google.com"
  		# Fill out and submit form
  		username_field = driver.find_element(name: 'q')
  		username_field.send_keys("Andrew Zaydak")
      search_button = driver.find_element(class: 'gNO89b')
      search_button.click

  	

  		driver.quit
	  end
  end
end
