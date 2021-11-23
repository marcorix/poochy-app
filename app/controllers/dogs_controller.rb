class DogsController < ApplicationController


  skip_before_action :authenticate_user!, only: :index
  before_action :set_dog, only: [:show]
  
  
  def index
    @dogs = Dog.all
  end
  
  def show
    @dog = Dog.find(params[:id])
  end

  def new
    @dog = Dog.new()
  end

  def create
    @dog = Dog.new(dog_params)
    @dog.user = current_user
    if @dog.save
      redirect_to dogs_path
    else
      render :new
    end
  end

  private

  def set_dog
    @dog = Dog.find(params[:id])
  end

  def dog_params
    params.require(:dog).permit(:name, :size, :age, :description, :gender, :address, :photo)
  end

end
