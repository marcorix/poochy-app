class DogsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_dog, only: [:show, :update]


  def index
    @dogs = Dog.all
  end

  def show
    @booking = Booking.new
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

  def update
    # @dog = Dog.find(params[:id]) before-action inplace
    if @dog.update(dog_params)
      redirect_to dog_path(@dog)
    else
      render :show
    end
  end

  private

  def set_dog
    @dog = Dog.find(params[:id])
  end

  def dog_params
    params.require(:dog).permit(:name, :size, :age, :description, :gender, :address, :breed, :photo)
  end

end
