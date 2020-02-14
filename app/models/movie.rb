class Movie < ApplicationRecord
  validates_presence_of :name, :creation_year, :genre
  has_many :actor_movies
  has_many :actors, through: :actor_movies
  belongs_to :studio

  def average_age
    actors(:age).average
  end

  def actors_sort_youngest_to_oldest
    actors.order(age: :desc)
  end
end
