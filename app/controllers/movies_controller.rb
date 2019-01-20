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
    begin
      if Movie.create!(movie_params)
        redirect_to movies_path, notice: 'New Movie has been added successfully.'
      else
        render 'new', notice: 'Hmm.. somthing went wrong!'
      end
    rescue ActiveRecord::RecordInvalid => exception
      redirect_to new_movie_path, alert: exception.message
    end
  end

  def show; end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    if @movie.update(movie_params)
      redirect_to @movie
    else
      render 'edit'
    end
  rescue ActiveRecord::RecordInvalid => exception
    redirect_to edit_movie_path, alert: exception.message
  rescue ActiveRecord::RecordNotFound => exception
    redirect_to movie_path, alert: exception.message
  end

  def find_movie
    @movie = Movie.find(params[:id])
  rescue ActiveRecord::RecordNotFound => exception
    redirect_to movie_path, alert: exception.message
  end

  def destroy
    if @movie.destroy
      redirect_to movies_path
    else
      redirect_to edit_movie_path, notice: 'Could not delete the record!'
    end
  rescue ActiveRecord::RecordNotFound => exception
    redirect_to movie_path, alert: exception.message
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :language, :release_date, :collection, :budget, :poster)
  end
end