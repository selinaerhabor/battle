require 'player'

describe Player do
  subject(:sel) { Player.new('Sel') }
  subject(:gemini) {Player.new('Gemini')}

  describe '#name' do
    it 'returns the name' do
      expect(sel.name).to eq 'Sel'
    end
  end
  describe '#hit_points' do
    it 'returns the hit points' do
      expect(gemini.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end
  describe '#attack' do
    it 'player 1 has hit player 2' do
      expect(gemini).to receive(:received_hit)
      sel.attack(gemini)
    end
  end
  describe '#received_hit' do
    it 'reduces Player 2s HP by 10' do
      expect{gemini.received_hit}.to change {gemini.hit_points}.by(-10)
    end
  end
end
