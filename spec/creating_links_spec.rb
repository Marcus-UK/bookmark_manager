feature 'creating links' do

  scenario 'I can add a new link to the database' do
    visit '/links/new'
    fill_in 'url', with: "http://www.zombo.com"
    fill_in 'title', with: "This is Zombocom"
    click_button 'Create Link'

    expect(current_path).to eq '/links'

    within 'ul#links' do
      expect(page).to have_content ('This is Zombocom')
    end
  end
end
