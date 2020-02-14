class ActorMovies < ApplicationRecord
  belongs_to :movie
  belongs_to :actor
end 
