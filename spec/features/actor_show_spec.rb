require 'rails_helper'

RSpec.describe 'As a visitor when I visit actor show page' do
  it 'shows actor info' do
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
    movie3 = studio1.movies.create(
      name: 'Hilarious movie',
      creation_year: '2013',
      genre: 'comedy'
    )
    actor1 = Actor.create(
      name: 'Will Smith',
      age: 41
    )
    actor2 = Actor.create(
      name: 'Alec Baldwin',
      age: 52
    )
    actor1.movies << [movie1, movie2]

    visit "/actors/#{actor1.id}"
    expect(current_path).to eq("/actors/#{actor1.id}")

    expect(page).to have_content('Will Smith')
    expect(page).to have_content(41)
    expect(page).to have_content('Action movie')
    expect(page).to have_content('Love movie')
    expect(page).to_not have_content('Alec Baldwin')
    expect(page).to_not have_content('Hilarious movie')
  end
end
