class TrainingsController < ApplicationController
  before_action :find_trainings, only: [:show, :edit, :update, :destroy]
  def index
    @trainings = Training.all.order("created_at DESC")
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

  def edit
  end

  def update
    if @training.update(trainings_params)
      redirect_to @training
    else
      render 'edit'
    end
  end

  def destroy
    @training.destroy
        redirect_to trainings_path, notice: "Succesfully Deleted Workout"
  end

private

  def find_trainings
    @training = Training.find(params[:id])
  end

   def trainings_params
    params.require(:training).permit(:date, :name, :description)
  end
end
