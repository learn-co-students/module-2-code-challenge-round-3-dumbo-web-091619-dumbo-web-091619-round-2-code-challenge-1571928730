class PizzasController < ApplicationController

  def index
    @pizzas = Pizza.all
  end

  def new
    @pizza = Pizza.new
  end 

  def create
    @pizza = Pizza.create(params.require(:pizza).permit(:name, :ingredients, :restaurant_id))
    redirect_to restaurants_path(@restaurant)
  end 

  def show
    @pizza = Pizza.find(params[:id])
  end 


end
