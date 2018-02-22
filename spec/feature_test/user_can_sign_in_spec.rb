RSpec.describe "Sign Up", :type => :feature do
  feature 'Sign Up' do
    scenario "Check able to sign up" do
      visit '/users/sign_up'
      fill_in 'user[email]', with: '123@testemail.com'
      fill_in 'user[password]', with: '123456'
      fill_in 'user[password_confirmation]', with: '123456'
      click_button 'Sign up'
      expect(page).to have_content('New Restaurant')
    end
  end
end
