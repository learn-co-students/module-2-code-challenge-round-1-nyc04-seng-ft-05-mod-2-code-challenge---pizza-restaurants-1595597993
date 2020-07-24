class PizzasController < ApplicationController
  before_action :set_pizza, only: [:show, :edit, :update, :destroy]

  def index
    @pizzas = Pizza.all
  end

  def edit
  end

  def show
  end

  def new
    @pizza = Pizza.new
  end

  def create

    respond_to do |format|
      if @pizza.save
        format.html { redirect_to @pizza, notice: 'pizza was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @pizza.update(pizza_params)
        format.html { redirect_to @pizza, notice: 'pizza was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @pizza.destroy
    respond_to do |format|
      format.html { redirect_to pizzas_url, notice: 'pizza was successfully destroyed.' }
    end
  end

  private
    def set_pizza
      @pizza = Pizza.find(params[:id])
    end

    def pizza_params
      params.require(:pizza).permit(:name, :ingredients)
    end

end
