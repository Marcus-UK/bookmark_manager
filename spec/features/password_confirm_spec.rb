feature 'confirm passwords match' do

  scenario 'Marcus signs in with password!' do
    expect{ sign_up(password_confirmation: 'wrong') }.not_to change(User, :count)
    #expect(page).to have_content 'Passwords do not match'
  end
end
