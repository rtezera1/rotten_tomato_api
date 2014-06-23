
class MoviesController < ApplicationController
  def new
    @movie = RottenMovie.find(rotten_params)
  end

  def index
    @movie.title
  end

  private 

  def rotten_params
    params.require(:movie).permit(:title)
  end
end
