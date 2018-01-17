require 'game'

describe Game do

  let(:player1) { double :player }
  let(:player2) { double :player, is_injured: nil }
  subject(:game) { described_class.new(player1, player2) }

  describe '#player1' do
    it 'returns player 1' do
      expect(game.player1).to eq player1
    end
  end

  describe '#player2' do
    it 'returns player 2' do
      expect(game.player2).to eq player2
    end
  end

  describe '#attack' do
    it 'damages the other player' do
      expect(player2).to receive(:is_injured)
      game.attack(player2)
    end
  end

end