class RestaurantsController < ApplicationController

	def index         # GET /restaurants
	@restaurants = Restaurant.all
end
	def show   
	@restaurant = Restaurant.find(params[:id]) # GET /restaurants/:id
	@review = Review.where(restaurant_id: @restaurant)
end

	def new           # GET /restaurants/new
	@restaurant = Restaurant.new
end

def edit
	@restaurant = Restaurant.find(params[:id])
end

	def create        # POST /restaurants
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save

    redirect_to restaurant_path(@restaurant)
end

private

	def restaurant_params
    params.require(:restaurant).permit(:name, :address)
end
  
  
end