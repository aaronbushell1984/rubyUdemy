# frozen_string_literal: true

##
# Garage is used to simulate spies ith allow in test specs
class Garage

  require_relative 'car'
  attr_reader :storage

  def initialize
    @storage = []
  end

  def add_to_collection(model)
    @storage << Car.new(model)
  end
end
