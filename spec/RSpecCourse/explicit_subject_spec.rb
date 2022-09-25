# frozen_string_literal: true

RSpec.describe Hash do
  subject(:count) do
    { a: 1, b: 1 }
  end
  it 'has two values' do
    expected = 2
    expect(count.length).to eq(expected)
  end
  context 'nested example also has access to explicit subject' do
    it 'has two values' do
      expected = 2
      expect(count.length).to eq(expected)
    end
  end
end
