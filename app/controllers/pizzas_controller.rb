class PizzasController < ApplicationController
  before_action :set_pizza, only: [:show, :create]
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
    @pizza = Pizza.find(params[:id])
  end
  def set_params
    params.require(:pizza).permit(params[:id,:name,:ingredients])
  end

end
