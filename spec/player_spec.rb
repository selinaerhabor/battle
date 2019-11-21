require 'player'

describe Player do
  subject(:shelton) { Player.new('Shelton') }

  describe '#name' do
    it 'returns the name' do
      expect(shelton.name).to eq 'Shelton'
    end
  end
  describe '#attack' do
    it 'player 1 has hit player 2' do
      expect(Gemini).to receive(:received_attack)
    end
  end
  describe '#receives_hit' do
    it 'reduces Player 2s HP by 10' do
      expect{Gemini.receives_hit}.to change {Gemini.hit_points}.by(-10)
    end
  end
end
