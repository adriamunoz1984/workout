class NutritionsController < ApplicationController
  before_action :find_nutrition, only: [:show, :edit, :update, :destroy]

  def index
    @nutrition = Nutrition.all.order("created_at DESC")
  end

  def show
  end

  def new
    @nutrition = Nutrition.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def find_nutrition
    @nutrition = Nutrition.find(params[:id])
  end

  def nutrition_params
    params.require(:nutrition).permit(:name, :protein, :carbohydrates, :fat, :calories, :notes)
  end


end
