# frozen_string_literal: true

##
# Movie is used to simulate mocking in test specs
class Movie

  require_relative 'actor'

  attr_reader :actor

  def initialize(actor)
    @actor = actor
  end

  def start_shooting
    return unless actor.ready?

    puts actor.act
    puts actor.fall_off_ladder
    puts actor.light_on_fire
    puts actor.act
  end
end
