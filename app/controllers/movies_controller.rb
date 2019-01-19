# frozen_string_literal: true

# Movie controller
class MoviesController < ApplicationController
  before_action :find_movie, only: %i[show edit update destroy]
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    Movie.create!(movie_params)
      redirect_to movies_path, notice: 'New Movie has been added successfully.'
    #else
    #  render 'new', notice: 'Hmm.. somthing went wrong!'
    #end
  end

  def show
    # Device gem for login
    # Active storage gem for Upload image
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    if @movie.update(movie_params)
      redirect_to @movie
    else
      render 'edit'
    end
  end

  def find_movie
    @movie = Movie.find(params[:id])
  end

  def destroy
    @movie.destroy
    redirect_to movies_path
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :language, :release_date, :collection, :budget, :poster)
  end
end
