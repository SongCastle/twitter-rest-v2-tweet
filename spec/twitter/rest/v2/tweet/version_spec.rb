RSpec.describe Twitter::REST::V2::Tweet do
  describe '::VERSION' do
    it 'current version' do
      expect(described_class::VERSION).to eq('1.0.0')
    end
  end
end
