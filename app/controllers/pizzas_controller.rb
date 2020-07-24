class PizzasController < ApplicationController
  before_action :find_id, only: [:show,:edit,:update,:destroy]
  def index
    @pizzas = Pizza.all
  end

  def new
    @pizza=Pizza.new
    @errors=flash[:errors]
  end

  def create
    @pizza=Pizza.create(pizza_params)
    @pizza.restaurants=(params[:pizza][:restaurants])

    if @pizza.valid?
      redirect_to pizza_path(@pizza)
    else
      flash[:errors]=@pizza.errors.full_messages
      redirect_to new_pizza_path
    end
    
  end

  def show
  end





  private

  def find_id
    @pizza=Pizza.find(params[:id])
  end

  def pizza_params
    params.require(:pizza).permit(:name,:ingredients)
  end

end
