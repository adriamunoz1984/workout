class TrainingsController < ApplicationController
  before_action :find_training , only: [:show, :edit, :update, :destroy] 

  def index
    @trainings = Training.all.order("created_at DESC")
  end

  def show
  end 

  def new
    @training = Training.new
  end

  def create
    @training = Training.new(training_params)
    if @training.save
      redirect_to @training
    else
      render 'new'
    end
  end

  def update
    @training.update(training_params)
    redirect_to @training
  end

  def edit
  end

  def destroy
    @training.destroy
    redirect_to root_path
  end

  private

  def find_training
    @training = Training.find(params[:id])
  end

  def training_params
    params.require(:training).permit(:workout, :date, :energy, :length)
  end

end
