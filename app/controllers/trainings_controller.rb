class TrainingsController < ApplicationController
  before_action :find_trainings, only: [:show, :edit, :update, :destroy]
  def index
    @trainings = Training.all
  end

  def show
  end

  def new
    @training = Training.new
  end

  def create
    @training = Training.new(trainings_params)

    if @training.save
      redirect_to @training, notice: "Succesfully created new Workout"
    else
      render 'new'
    end
  end

private

  def find_trainings
    @training = Training.find(params[:id])
  end

   def trainings_params
    params.require(:trainings).permit(:date, :type, :description)
  end
end
