class DishesController < ApplicationController
  before_action :set_dish, only: %i[ show edit update destroy ]

  def new
    @dish = Dish.new
    @shops = Shop.all
  end

  def create
    @dish = Dish.new(dish_params)

    respond_to do |format|
      if @dish.save
        format.html { redirect_to @dish, notice: "Dish was successfully created." }
        format.json { render :show, status: :created, location: @dish }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dish.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  def index
    @dishes = Dish.all
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_dish
    @dish = Dish.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def dish_params
    params.require(:dish).permit(:name, :price, :shop_id)
  end
end
