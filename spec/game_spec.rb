require './lib/game.rb'

describe Game do
  subject(:game) { described_class.new }
  let(:player) { double(:player) }

  it 'receive the method damage' do
    expect(player).to receive(:damage)
    game.attack(player)
  end
end
