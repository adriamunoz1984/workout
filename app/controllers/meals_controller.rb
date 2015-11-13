class MealsController < ApplicationController
   def create
    @nutrition = Nutrition.find(params[:nutrition_id])
    @meal = @nutrion.meals.create(params[:meals].permit(:name, :protein, :carbohydrates, :fat, :calories, :notes, :date))

    redirect_to nutrition_path(@nutrition)
  end
end
