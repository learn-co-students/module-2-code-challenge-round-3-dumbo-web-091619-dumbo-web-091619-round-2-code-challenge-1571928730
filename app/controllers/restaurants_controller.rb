class RestaurantsController < ApplicationController
  def index
    if params[:search]
      @restaurant = Restaurant.where("name LIKE ?", "%#{params[:search]}%")
    else
      @restaurant = Restaurant.all
    end
  end


  def show
    @restaurant = Restaurant.find(params[:id])
  end


  def search
    @user = Restaurant.search(params[:search])
  end


  def new
  end


  def create
  end


  def edit
  end

  def update
  end


  def delete
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address)
  end
end
