
feature 'Enter name' do
  scenario 'submitting name' do
    visit('/')
    fill_in :player_name, with: 'Julie'
    click_button 'Submit'
    
    expect(page).to have_content 'Julie'
  end
end
