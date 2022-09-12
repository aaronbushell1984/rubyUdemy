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

    actor.act
    actor.fall_off_ladder
    actor.light_on_fire
  end
end
