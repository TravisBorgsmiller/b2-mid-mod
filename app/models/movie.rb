class Movie < ApplicationRecord
  validate_prescence_of :name, :creation_year, :genre
  has_many :actor_movies
  has_many :actors, through: :actor_movies
  belongs_to :studio
end
