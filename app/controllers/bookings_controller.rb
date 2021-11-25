class BookingsController < ApplicationController

  def index
  @bookings = Booking.all
  end

  def show
    @dog = Dog.find(params[:dog_id])
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(bookings_params)
    @dog = Dog.find(params[:dog_id])
    @booking.dog = @dog
    @booking.user = current_user
    @booking.confirmed = false

    if @booking.save
      redirect_to user_booking_path(@dog, @booking)
    else
      render :new
    end
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.update(confirmed: true)
    redirect_to request.referrer
  end

  def reject
    @booking = Booking.find(params[:id])
    @booking.update(confirmed: false)
    redirect_to request.referrer
  end

  private

  # Only allow a list of trusted parameters through.
  def bookings_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
