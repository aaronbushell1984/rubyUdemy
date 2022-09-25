# frozen_string_literal: true

RSpec.describe Array do
  subject(:sally) do
    %w[sword shield]
  end
  it 'sally has length of 2 and the 1 after pop is called' do
    expected = 2
    expect(sally.length).to eq(expected)
    after_pop = 1
    sally.pop
    expect(sally.length).to eq(after_pop)
  end
  it 'sally has length of 2 despite pop in previous test' do
    expected = 2
    expect(sally.length).to eq(expected)
  end
end
