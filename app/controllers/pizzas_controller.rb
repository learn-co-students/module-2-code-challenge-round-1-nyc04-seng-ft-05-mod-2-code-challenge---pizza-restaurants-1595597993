class PizzasController < ApplicationController
  before_action :find_pizza, only: [:show, :edit]

  def index
    @pizzas = Pizza.all
  end
  
  def show
    
  end

  def new
    @pizza = Pizza.new
    @errors= flash[:errors]
  end

  def create
    @pizza = Pizza.create(pizza_params)
    if @pizza.valid?
      redirect_to @pizza
    else
      flash[:errors] = @pizza.errors.full_messages
      redirect_to new_pizza_path
    end

  end

  def edit
    render :edit
  end

  private
  def pizza_params
    params.require(:pizza).permit(:name, :ingredients)
  end

  def find_pizza
    @pizza = Pizza.find(params[:id])
  end

end
