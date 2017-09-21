def sign_up(email: 'marcus@example.com',
            password: 'password!',
            password_confirmation: 'password!')
  visit '/users/new'
  expect(page.status_code).to eq(200)
  fill_in :email,    with: 'marcus@example.com'
  fill_in :password, with: password
  fill_in :password_confirmation, with: password_confirmation 
  click_button 'Sign up'
end

def incorrect_sign_up
  visit '/users/new'
  expect(page.status_code).to eq(200)
  fill_in :email,    with: 'marcus@example.com'
  fill_in :password, with: 'password!'
  fill_in :password_confirmation, with: 'password1'
  click_button 'Sign up'
end
