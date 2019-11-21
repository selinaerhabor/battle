# require 'player'

# describe Player do
#   subject(:shelton) { Player.new('Shelton') }
# end
  describe '#name' do
    it 'returns the name' do
      expect(shelton.name).to eq 'Shelton'
    end
  end
