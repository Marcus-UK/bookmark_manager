feature 'Adding multiple tags' do

  scenario 'adding news and sports tags to bbc.co.uk' do
    visit '/links/new'
    fill_in 'url', with: "http://www.bbc.co.uk"
    fill_in 'title', with: "BBC site"
    fill_in 'tags', with: 'news sports'

    click_button 'Create Link'

    link = Link.first
    expect(link.tags.map(&:name)).to include 'news' and 'sports'

  end
end
