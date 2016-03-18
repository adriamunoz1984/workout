class NutritionsController < ApplicationController
  before_action :find_nutrition, only: [:show, :edit, :update, :destroy]

  def index
    @nutritions = Nutrition.all.order("created_at DESC")
  end

  def show
  end

  def new
    @nutrition = Nutrition.new
  end

  def create
    @nutrition = Nutrition.new(nutrition_params)
    if @nutrition.save
      redirect_to @nutrition
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @nutrition = Nutrition.update(nutrition_params)
    redirect_to @nutrition
  end

  def destroy
    @nutrition.destroy
    redirect_to root_path
  end

  private

  def find_nutrition
    @nutrition = Nutrition.find(params[:id])
  end

  def nutrition_params
    params.require(:nutrition).permit(:name, :date)
  end


end
