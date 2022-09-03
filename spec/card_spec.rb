# frozen_string_literal: true

require '../testing/card'

RSpec.describe Card do
  let(:card) { Card.new('Ace', 'Spades') }
  it 'has a rank' do
    expected = 'Ace'
    expect(card.rank).to eq(expected)
  end
  it 'has a suit' do
    expected = 'Spades'
    expect(card.suit).to eq(expected)
  end
  it 'can change rank' do
    expected = 'King'
    card.rank = expected
    expect(card.rank).to eq(expected)
  end
  it 'can change suit' do
    expected = 'Diamonds'
    card.suit = expected
    expect(card.suit).to eq(expected)
  end
end
