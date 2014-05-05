require 'spec_helper'

feature 'user adds a book' do
	scenario 'with valid title' do
		visit new_book_path

		fill_in 'Title', with: 'title nine'
		click_button 'Add'

		expect(page).to have_content('title nine')
	end
end