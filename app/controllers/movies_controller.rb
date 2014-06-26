
class MoviesController < ApplicationController

  def new
    @movie = Movie.new
  end  

  def create
    @movie = Movie.new(movie_params)
    if Search.search(@movie.title) !='Not Found'
      @movie.save
      flash[:notice] = 'Saved'
      redirect_to movie_path(@movie)    
    else
      flash[:notice] = 'Not A Valid Movie'
      render :new
    end
  end

  def show
    @movie = Movie.find(params[:id])
    @query = Search.search(@movie.title)
    @title = Search.title(@query)
    @year = Search.year(@query)
    @synopsis = Search.synopsis(@query)
  end

  def movie_params
    params.require(:movie).permit(:title)
  end
end


