# frozen_string_literal: true

##
# Card represents a standard playing card
class Card
  attr_accessor :suit, :rank

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

end
