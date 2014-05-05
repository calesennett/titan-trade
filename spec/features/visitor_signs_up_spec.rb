require 'spec_helper'

feature 'Visitor signs up' do
	scenario 'with valid iwu.edu email and password' do
		sign_up_with 'csennett@iwu.edu', 'password'

		expect(page).to have_content('Hello, world!')
	end

	scenario 'with non-iwu.edu email' do
		sign_up_with 'csennett@gmail.com', 'password'

		expect(page).to have_content('Sign up')
	end
end