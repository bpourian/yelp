require 'rails_helper'

RSpec.describe "Add restaurant", :type => :feature do
  feature 'Create restaurant' do
    before do
      user = User.create email: 'tansaku@gmail.com', password: '12345678', password_confirmation: '12345678'
      login_as user
    end
    scenario "displays restaurant in list after creating it" do
      visit '/'
      click_on 'New Restaurant'
      fill_in 'restaurant[name]', with: 'Testaurant'
      fill_in 'restaurant[description]', with: 'Delicious'
      click_button 'Create Restaurant'
      expect(page).to have_content('Testaurant')
      expect(page).to have_content('Delicious')
      expect(page).to have_content('tansaku@gmail.com')
    end
  end
end
