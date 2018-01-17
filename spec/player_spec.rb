require 'player'

describe Player do

  subject(:player1) { described_class.new("Player 1") }
  subject(:player2) { described_class.new("Player 2") }

  describe "#name" do
    it "returns player name" do
      expect(player1.name).to eq "Player 1"
    end
  end

  describe '#hp' do
    it 'returns the hit points' do
      expect(player1.hp).to eq described_class::DEFAULT_HP
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { player2.is_injured }.to change { player2.hp }.by(-10)
    end
  end
end