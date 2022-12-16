class ReviewsController < ApplicationController
  def create
    # find the restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant

    respond_to do |format|
      if @review.save
        format.html { redirect_to restaurant_path(@restaurant) }
        format.json # Rails will look for a CREATE.json view
      else
        format.html { render 'restaurants/show' }
        format.json # will look for a CREATE.json view
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
