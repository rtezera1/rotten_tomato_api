
class RottenmoviesController < ApplicationController
include RottenTomatoes
require 'rottentomatoes'

  def show
    @movie = RottenMovie.find(params[:title])
    if @movie.valid?
      redirect_to new_rottenmovie_path
    else
      render :show
    end
  end

  def new
    @movie.title
  end
end
