require './app.rb'

feature 'Testing to have names' do
  scenario 'checks that we have submited 2 names' do
    visit('/')
    fill_in :player_1, with: 'Alexa'
    fill_in :player_2, with: 'David'
    click_button 'Submit'
    expect(page).to have_content 'Alexa vs. David'
  end
end
