require './lib/player.rb'

describe Player do
    subject(:player) { described_class.new('Ellie') }
  it 'returns the player\'s name' do
    expect(player.name).to eq('Ellie')
  end

  it 'start with 100 points' do
    expect(player.points).to eq(Player::POINTS)
  end

  # it 'reduce Player 2 HP when attack' do
  #   player2 = Player.new("Ana")
  #   expect{player.attack(player2)}.to change{player2.points}.from(100).to(90)
  # end
end
