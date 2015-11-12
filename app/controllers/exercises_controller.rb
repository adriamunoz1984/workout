class ExercisesController < ApplicationController
  def create
    @training = Training.find(params[:training_id])
    @exercise = @training.exercises.create(params[:exercise].permit(:name, :sets, :reps))

    redirect_to training_path(@training)
  end
end
