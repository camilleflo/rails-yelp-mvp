class ReviewsController < ApplicationController

	def new
     @restaurant = Restaurant.find(params[:restaurant_id])
    # afficcher le formulaire
		@review = @restaurant.reviews.build # c'est comme Review.new sauf qu'on aura récup le restaurant ID
	end


def create
   @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    # enregistrer la review en base
    @review.restaurant = @restaurant
    @review.save
    redirect_to restaurant_path(@restaurant)
end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end