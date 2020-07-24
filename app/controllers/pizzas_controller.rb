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
  
  def edit
    @pizza = Pizza.find(params[:id])
  end

  def create
    @pizza = Pizza.new(pizza_params)
    
    if @pizza.save
      restaurant_id = params[:pizza][:restaurant_pizza][:restaurant_id]
      RestaurantPizza.create(pizza_id: @pizza.id, restaurant_id: restaurant_id)
      redirect_to @pizza 
    else 
      render :new
    end
  end

  private

  def pizza_params
    params.require(:pizza).permit(:name, :ingredients, :restaurant_pizza)
  end
end
