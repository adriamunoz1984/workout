class ExercisesController < ApplicationController
	before_action :find_exercise, only:[:show, :edit, :update, :destroy]
	def index
		@exercses = Exercise.all.order("created_at DESC")
	end

	def new
		@exercise = Exercise.new
	end

	def create
		@exercise = Exercise.new(exercise_params)
		if @exercise.save
			redirect_to @exercise, notice: "Exercise created"
		else
			redirect_to trainings_path
		end
	end

	def show
	end

	def edit
	end

	def update
	end

	def destroy
		@exercise.destroy
			redirect_to exercises_path, notice: "Exercise deleted"
	end

	private

	def exercise_params
		params.require(:exercises).permit(:name, :notes, wostes_attributes:[:id, :weight,:reps,:notes, :_destroy])
	end

	def find_exercise
		@exercies= Exercise.find(params[:id])
	end

end
