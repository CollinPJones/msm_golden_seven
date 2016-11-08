class MoviesController < ApplicationController
  def index
    @movie = Movie.all
  end

  def show
    @movie = Movie.find_by({ :id => params[:id]})
  end

  def new_form

  end

  def create_row
    #Parameters: {"title"=>"test", "year"=>"test", "duration"=>"test", "description"=>"test", "image_url"=>"test"}
    movie = Movie.new
    movie.title = params[:title]
    movie.year = params[:year]
    movie.duration = params[:duration]
    movie.description = params[:description]
    movie.image_url = params[:image_url]
    movie.save

    redirect_to("/movies/#{movie.id}")
  end
  def edit
    @movie = Movie.find_by({ :id => params[:id]})
  end

  def update_row
    movie = Movie.find_by({ :id => params[:id]})
    movie.title = params[:title]
    movie.year = params[:year]
    movie.duration = params[:duration]
    movie.description = params[:description]
    movie.image_url = params[:image_url]
    movie.save

    redirect_to("/movies/#{movie.id}")
  end

  def delete_row
    @movie = Movie.find_by({ :id => params[:id]})
    @movie.destroy
  end

end
