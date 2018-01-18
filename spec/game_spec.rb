require './lib/game.rb'

describe Game do
  subject(:game) { described_class.new(player, player2) }
  let(:player) { double(:player) }
  let(:player2) { double(:player2) }

  it 'receive the method damage' do
    expect(player).to receive(:damage)
    game.attack(player)
  end

  it 'receives a new Game class initiated with 2 arguments' do
    expect(Game).to receive(:new).with(player, player2)
    Game.new(player, player2)
  end
end
