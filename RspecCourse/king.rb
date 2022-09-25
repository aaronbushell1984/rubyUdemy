# frozen_string_literal: true

##
# King defines a male monarch with a name. Used to illustrate described_class.rb
class King
  attr_reader :name

  def initialize(name)
    @name = name
  end
end
