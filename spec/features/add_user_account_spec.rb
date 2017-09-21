feature 'add a user account' do

scenario 'user visits site and signs up' do
  expect { sign_up }.to change(User, :count).by(1)
   expect(page).to have_content('Welcome, marcus@example.com')
   expect(User.first.email).to eq('marcus@example.com')
 end
end
