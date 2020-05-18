require "selenium-webdriver"
require "rspec"
require "ffi"
require "ChildProcess"

# TEST: Sign up for blog
describe "Blog application" do

	describe "when signing up a new user" do
		it "creates a new user account successfully" do
			timestamp = Time.now.to_i
			driver = Selenium::WebDriver.for :firefox
			# Go to signup form
			driver.navigate.to "https://selenium-blog.herokuapp.com/signup"
			#Fill out and submitt form
			username_filed = driver.find_element(id: 'user_username')
			username_field.send_keys("user #{timestamp}")

			email_field = driver.find_element(id: 'user_email')
			email_field.send_keys("user#{timestamp}@test.com")

			passord_field = driver.find_element(id: 'user_password')
			password_field.send_keys("password")

			submit_button = driver.find_element(id: 'submit')
			submit_button.click

			# Confirm user is signed up successfully 
			banner = driver.find_element(id: 'flash_success')
			banner_text = banner.text 
			expect(banner_text).to eq("Welcome to the alpha blog user #{timestamp}")

			driver.quit
		end
	end
end