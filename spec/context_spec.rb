# frozen_string_literal: true

RSpec.describe '#even? method' do
  let(:context) { Context.new }
  context 'when even' do
    it 'return true' do
      expected = true
      expect(4.even?).to eq(expected)
    end
  end
  context 'when odd' do
    it 'return false' do
      expected = false
      expect(5.even?).to eq(expected)
    end
  end
end
