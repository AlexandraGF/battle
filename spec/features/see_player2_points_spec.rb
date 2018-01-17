require './app.rb'

feature 'See the points' do
  scenario 'checks player2\'s points' do
    # visit('/')
    # fill_in :player_1, with: 'Alexa'
    # fill_in :player_2, with: 'David'
    # click_button 'Submit'
    sign_in_and_play
    expect(page).to have_content 'David: 20 Hit Points'
  end
end
