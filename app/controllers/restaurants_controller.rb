class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
    @restaurants = Restaurant.search(params[:search])
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end 



  private

    def restaurant_params
      params.require(:restaurant).permit(:name, :address, :search)
    end 

end
