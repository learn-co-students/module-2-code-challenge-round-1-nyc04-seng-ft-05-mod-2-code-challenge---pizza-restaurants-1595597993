class PizzasController < ApplicationController
  before_action :find_pizza, except: [:index, :new, :create]

  def index
    @pizzas = Pizza.all
  end

  def show
  end

  def new
    @pizza = Pizza.new
  end

  def edit
  end

  def create
    @pizza = Pizza.new(pizza_params)
    if @pizza.save
      flash[:success] = "Pizza successfully created"
      redirect_to @pizza
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def update
    if @pizza.update_attributes(pizza_params)
      flash[:success] = "Pizza was successfully updated"
      redirect_to @pizza
    else
      flash[:error] = "Something went wrong"
      render 'edit'
    end
  end

  def destroy
    if @pizza.destroy
      flash[:success] = "Pizza was successfully deleted"
      redirect_to @pizzas_path
    else
      flash[:error] = "Something went wrong"
      redirect_to @pizzas_path
    end
  end

  private

  def find_pizza
    @pizza = Pizza.find(params[:id])
  end

  def pizza_params
    params.require(:pizza).permit(:name, :ingredients)
  end

end
