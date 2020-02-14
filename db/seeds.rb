# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Studio.destroy_all
Movie.destroy_all
Actor.destroy_all
studio1 = Studio.create(
  name: 'Travis Productions'
)
studio2 = Studio.create(
  name: 'Bentley Productions'
)
movie1 = studio1.movies.create(
  name: 'Action movie',
  creation_year: '2007',
  genre: 'action'
)
movie2 = studio1.movies.create(
  name: 'Love movie',
  creation_year: '2011',
  genre: 'romantic comedy'
)
movie3 = studio2.movies.create(
  name: 'Hilarious movie',
  creation_year: '2013',
  genre: 'comedy'
)
actor4 = movie1.actors.create(
  name: 'Brad Pitt',
  age: 48
)
