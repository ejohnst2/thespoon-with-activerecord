class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :update, :destroy, :edit]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    # create new instance of restaurant
    @restaurant = Restaurant.new
  end

  def create
    # save a new instance of restaurant with user-given parameters
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save

    redirect_to restaurant_path(@restaurant)
  end

  def edit
  end

  def update
    @restaurant.update(restaurant_params)

    # redirecting to the path of this specific instance
    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    @restaurant.destroy

    redirect_to restaurants_path
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:restaurant).permit(:name, :address)
  end
end
