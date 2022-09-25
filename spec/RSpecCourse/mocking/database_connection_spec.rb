# frozen_string_literal: true

RSpec.describe 'Database_Connection' do
  subject(:db) do
    double('Database Connection', connect: true, disconnect: 'Goodbye')
  end
  context 'when calling connect' do
    it 'should return true' do
      expect(db.connect).to eq(true)
    end
  end
  context 'when calling disconnect' do
    it 'should return true' do
      expect(db.disconnect).to eq('Goodbye')
    end
  end
end
