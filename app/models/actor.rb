class Actor < ApplicationRecord
  validate_prescence_of :name, :age
  belongs_to :studio
  has_many :actor_movies
  has_many :movies, through: :actor_movies
end 
