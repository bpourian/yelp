def add_restaurant
  visit '/'
  click_on 'New Restaurant'
  fill_in 'restaurant[name]', with: 'Testaurant'
  fill_in 'restaurant[description]', with: 'Delicious'
  click_button 'Create Restaurant'
  expect(page).to have_content('Testaurant')
  expect(page).to have_content('Delicious')
end
