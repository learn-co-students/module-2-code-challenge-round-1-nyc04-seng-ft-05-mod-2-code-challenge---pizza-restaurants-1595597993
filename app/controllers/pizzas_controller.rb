class PizzasController < ApplicationController
  before_action :set_pizza, only: [:show]
  def index
    @pizzas = Pizza.all
  end
 
  def new
    @pizza = Pizza.new
  end

  def create
    @pizza = Pizza.new(set_params)
    if @pizza.valid?
      @pizza.save
      redirect_to pizzas_path(@pizza)
    else
      render :new
    end
  end

  def show
    
  end

  private
  def set_pizza
    byebug
    @pizza = Pizza.find(params[:id])
    # why am i getting a nill id
  end
  
  def set_params
    params.require(:pizza).permit(:name, :ingredients)
  end

end
