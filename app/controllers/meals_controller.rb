class MealsController < ApplicationController
   def create
    @nutrition = Nutrition.find(params[:nutrition_id])
    @meal = @nutrition.meals.create(params[:meal].permit(:feast, :name, :protein, :carbohydrates, :fat, :calories, :notes, :date))

    redirect_to nutrition_path(@nutrition)
  end
end
