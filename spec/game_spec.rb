require 'game'

describe Game do

  subject(:game) { described_class.new }
  let(:player1) { double :player }
  let(:player2) { double :player, is_injured: nil }

  describe '#attack' do
    it 'damages the other player' do
      expect(player2).to receive(:is_injured)
      game.attack(player2)
    end
  end

end