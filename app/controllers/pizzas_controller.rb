class PizzasController < ApplicationController
  before_action :find_pizza, only: [:show, :edit, :destroy, :update]


  def index
    @pizzas = Pizza.all
  end
  def show
  end
  def new
    @pizza = Pizza.new
  end
  def create
    @pizza = Pizza.create(pizza_params)
    if @pizza.valid?
    redirect_to @pizza
    else
      redirect_to new_pizza_path
    end 
  end

  private
   
  def find_pizza
    @pizza = Pizza.find(params[:id])
  end

  def pizza_params
    params.require(:pizza).permit(:name, :ingredients, restaurant_id:)
  end

end
