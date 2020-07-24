class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def show
    @pizza = Pizza.find(params[:id])
  end

  def new
    @pizza = Pizza.new()
  end

  def create
    @pizza = Pizza.create(pizza_params)
    if @pizza.name.valid?
      redirect_to @pizza_params
    else
      redirect_to @pizzas 
    end
  end

  def pizza_params
    params.require(:pizza).permit(:name, :ingrediens)
  end
end
