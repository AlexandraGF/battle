require './app.rb'

feature 'Player attack' do
  scenario 'get confirmation of attack' do
    # visit('/')
    # fill_in :player_1, with: 'Alexa'
    # fill_in :player_2, with: 'David'
    # click_button 'Submit'
    sign_in_and_play
    click_on 'Attack'
    expect(page).to have_content 'Alexa attacked David.'
  end

  scenario 'get confirmation of hit points change' do
    sign_in_and_play
    click_on 'Attack'
    expect(page).to have_content 'David has now 90 Hit Points.'
  end
end
