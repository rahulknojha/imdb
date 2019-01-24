class ReviewsController < ApplicationController
	before_action :find_review, only: %i[show edit destroy]
  def new
  	@review = Review.new
  end

  def edit
  	@review = Review.find(params[:id])
  end

  def create
  	@review = Review.new(review_params)
  	@review.user_id = current_user.id
  	@review.datetime = DateTime.now.strftime("%d %m %Y | %H:%M")
    if @review.save
      redirect_to movies_path, notice: 'New Review has been added successfully.'
    else
      flash[:message] = @review.errors.messages
      flash[:errors] = @review.errors.details
      render movie_path, notice: 'Hmm.. Somthing went wrong!'
    end
  end

  def destroy
  	if @review.destroy
      redirect_to movies_path
    else
      redirect_to movies_path, notice: 'Could not delete the review!'
    end
  rescue ActiveRecord::RecordNotFound => exception
    redirect_to movie_path, alert: exception.message
  end

  def find_review
    @review = Review.find(params[:id])
  rescue ActiveRecord::RecordNotFound => exception
    redirect_to movies_path, alert: exception.message
  end

  private

  def review_params
    params.require(:review).permit(:rating, :review, :reviewable_id, :reviewable_type)
  end
end
