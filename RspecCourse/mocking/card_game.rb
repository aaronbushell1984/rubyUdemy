# frozen_string_literal: true

class CardGame
  attr_reader :cards

  def start
    @cards = Deck.build
  end
end
