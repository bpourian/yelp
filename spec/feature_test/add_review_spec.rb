require 'rails_helper'

RSpec.describe "Add review", :type => :feature do
  before do
    user = User.create email: 'tansaku@gmail.com', password: '12345678', password_confirmation: '12345678'
    login_as user
  end
  feature 'Create Review' do
    scenario 'create one review for a restaurant' do
      add_restaurant
      fill_in 'review_rating', with: 5
      fill_in 'review_comment', with: 'Really Good!!'
      click_button 'Create Review'
      within('div.reviewrating') {expect(page).to have_content('5')}
      within('div.reviewcomment') {expect(page).to have_content('Really Good!!')}
    end
  end
end
