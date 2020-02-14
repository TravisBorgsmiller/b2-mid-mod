require 'rails_helper'

RSpec.describe 'As a visitor when I go to studio index page' do
  it 'shows studio info' do
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
    visit '/studios'
    expect(current_path).to eq('/studios')

    expect(page).to have_content('Travis Productions')
    expect(page).to have_content('Bentley Productions')
    expect(page).to have_content('Action movie')
    expect(page).to have_content('Love movie')
    expect(page).to have_content('Hilarious movie')
  end
end 
