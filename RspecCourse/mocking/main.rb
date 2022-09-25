require_relative 'movie'
require_relative 'actor'

actor = Actor.new('Brad Pitt')
movie = Movie.new(actor)

movie.start_shooting
