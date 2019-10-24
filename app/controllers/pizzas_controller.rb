class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def show
    @pizza = Pizza.find(params[:id])
  end

  def new
    @pizza = Pizza.new
  end

  def create
    pizza = Pizza.new(pizza_params)
    if pizza.valid?
      pizza.save
      redirect_to pizza
    else
      flash[:errors] = pizza.errors.full_messages
      byebug
      redirect_to new_pizza_path
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def pizza_params
    params.require(:pizza).permit(:name, :ingredients, :restaurant_id)
  end

end
