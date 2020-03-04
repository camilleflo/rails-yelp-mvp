class ReviewsController < ApplicationController
before action: set_restaurant 
	def new
    # afficcher le formulaire
		@review = Review.new
	end
end

def create
    @review = Review.new(review_params)
    # enregistrer la review en base
    @review.restaurant = @restaurant
    @review.save
    redirect_to restaurant_path(@restaurant)
end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[restaurant_id])
  end
end