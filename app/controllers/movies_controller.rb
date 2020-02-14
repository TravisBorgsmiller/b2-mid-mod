class MoviesController < ApplicationController
  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.find(params[:id])
  end

  def update
    movie = Movie.find(params[:id])
    actor = Actor.find(params[:name])
    movies.actors << actor
    redirect_to "/movies/#{movie.id}"
  end
end
