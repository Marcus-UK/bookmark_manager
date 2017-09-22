feature 'confirm passwords match' do

  scenario 'Sign in with correct password' do
    expect{ sign_up }.to change(User, :count).by(1)
  end


  scenario 'Marcus signs in with wrong password' do
    expect{ sign_up(password_confirmation: 'wrong') }.not_to change(User, :count)
    #expect(page).to have_content 'Passwords do not match'
  end
end
