# frozen_string_literal: true

require_relative '../../../RspecCourse/mocking/card_game'
require_relative '../../../RspecCourse/mocking/deck'

RSpec.describe CardGame do
  context 'when using class double' do
    it 'should only allow class level methods' do
      # class_double(Deck, shuffle: %w[Queen Ace])
      # protects with error -the Deck class does not implement the class method: shuffle
      deck_klass = class_double(Deck, build: %w[Ace Queen]).as_stubbed_const
      expect(deck_klass).to receive(:build)
      subject.start
      expect(subject.cards).to eq(%w[Ace Queen])
    end
  end
end
