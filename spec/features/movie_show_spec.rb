require 'rails_helper'

RSpec.describe 'As a visitor when I visit movie show page' do
  it 'shows movie info with actors and age youngest to oldest and average age' do
    studio1 = Studio.create(
      name: 'Travis Productions'
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
    actor1 = Actor.create(
      name: 'Will Smith',
      age: 41
    )
    actor2 = Actor.create(
      name: 'Alec Baldwin',
      age: 52
    )
    actor3 = Actor.create(
      name: 'Kevin Hart',
      age: 44
    )
    actor4 = Actor.create(
      name: 'Brad Pitt',
      age: 48
    )
    movie2.actors << [actor1, actor2, actor3]

    visit "/movies/#{movie2.id}"
    expect(current_path).to eq("/movies/#{movie2.id}")
    expect(page).to have_content('Love movie')
    expect(page).to have_content('2011')
    expect(page).to have_content('romantic comedy')
    expect(page).to have_content('Will Smith')
    expect(page).to have_content('Alec Baldwin')
    expect(page).to have_content('Kevin Hart')
    expect(page).to_not have_content('Brad Pitt')
    expect(page).to_not have_content('Action movie')
    expect(page).to have_content('Average age: 46')
  end
end
