class PizzasController < ApplicationController
  before_action :set_pizza, only: [:index, :show, :edit, :update]

  def index
  end

  def show
  end

  def new
    @pizza = Pizza.new
  end

  def create
    @pizza = Pizza.new(pizza_params)
    @pizza.save ? (redirect_to @pizza) : (render :new)
  end

  def edit
  end

  private

  def set_pizza
    params[:id].nil? ? (@pizzas = Pizza.all) : (@pizza = Pizza.find(params[:id]))
  end

  def pizza_params
    params.require(:pizza).permit(:name, :ingredients, :restaurant_id)
  end

end
