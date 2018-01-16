require 'player'

describe Player do

  subject(:player) { described_class.new("Test name") }

  describe "#name" do
    it "returns player name" do
      expect(player.name).to eq "Test name"
    end
  end
end