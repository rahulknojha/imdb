# frozen_string_literal: true

# Review controller
class ReviewsController < ApplicationController
  before_action :find_review, only: %i[show edit update destroy]
  before_action :init_movie, only: [:new]
  def new
    @review = Review.new
  end

  def edit
    if current_user.id == Review.find(params[:id]).user_id
      @review = Review.find(params[:id])
    else
      redirect_to movie_path @movie, notice: 'Invalid move!' 
    end
    # @movie = @review.reviewable_type.constantize.find(@review.reviewable_id)
    # render movie_path@movie
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.datetime = DateTime.now.strftime('%d %m %Y | %H:%M')
    @movie = @review.reviewable_type.constantize.find(@review.reviewable_id)
    if @review.save
      redirect_to movie_path @movie, notice: 'New Review has been added successfully.'
    else
      flash[:message] = @review.errors.messages
      flash[:errors] = @review.errors.details
      redirect_to movie_path @movie, notice: 'Invalid move!'
    end
  end

  def update
    if @review.update!(review_params)
      redirect_to movie_path(@movie)
    else
      redirect_to movie_path @movie, notice: 'All fields are mandatory in Appropriate Format!'
    end
  end

  def destroy
    if current_user.id == Review.find(params[:id]).user_id
      if @review.destroy
        redirect_to movie_path@movie
      else
        redirect_to movie_path@movie, notice: 'Could not delete the review!'
      end
    else
      redirect_to movie_path @movie, notice: 'Invalid move!'
    end
  rescue ActiveRecord::RecordNotFound => exception
    redirect_to movie_path, alert: exception.message
  end

  def find_review
    @review = Review.find(params[:id])
    @movie = @review.reviewable_type.constantize.find(@review.reviewable_id)
  rescue ActiveRecord::RecordNotFound => exception
    redirect_to movies_path, alert: exception.message
  end

  private

  def review_params
    params.require(:review).permit(:rating, :review, :reviewable_id, :reviewable_type)
  end

  def init_movie
    @movie = Movie.find(params[:movie_id])
  end
end
