class PizzasController < ApplicationController

  def index
    @pizzas = Pizza.all
  end

  def show
    @pizza = Pizza.find(params[:id])
  end

  def new
    @restaurants = Restaurant.all
    @pizza = Pizza.new
    @errors = flash[:errors]
  end

  def create
    pizza = Pizza.create(pizza_params)
    #if pizza
      #redirect_to pizza_path(pizza)
    #else
    #flash[:errors] = pizza.errors.full_messages
    #redirect_to pizza_path
    #end
    redirect_to pizza_path(pizza)
  end


  private
  def pizza_params
    params.require(:pizza).permit(:name, :ingredients)
  end

end
