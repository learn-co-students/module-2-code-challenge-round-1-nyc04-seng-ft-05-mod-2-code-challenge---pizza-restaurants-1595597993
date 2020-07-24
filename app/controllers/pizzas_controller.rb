class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def show 
    @pizzas = Pizza.find(params[:id])
  end
end
