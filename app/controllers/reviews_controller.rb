class ReviewsController < ApplicationController
  def new
    @review = Review.new(@restaurant)
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = restaurant
    if @review.save
      redirect_to review_path(@restaurant)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
