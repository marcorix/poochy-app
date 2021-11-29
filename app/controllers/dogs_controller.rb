class DogsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_dog, only: [:show, :update]
#  protect_from_forgery except: :index

  def index

    if params[:query].present?
      @dogs = Dog.search_by_breed_and_size_and_gender(params[:query])
    else
      @dogs = Dog.all
    end

    # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    @markers = @dogs.geocoded.map do |dog|
      {
        lat: dog.latitude,
        lng: dog.longitude,
        info_window: render_to_string(partial: "dog_map_infos", locals: { dog: dog }),
        image_url: helpers.asset_url("dog_icon.jpg")
      }
    end

    respond_to do |format|
      format.js {
        return render partial: 'dogs/list', locals: { dogs: @dogs }
      }
      format.html # go do your thing
    end

    #render the index page by default
  end

  def map
  end

  def show
    @booking = Booking.new
  end

  def new
    @dog = Dog.new
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
