class ChatroomsController < ApplicationController
  def index
    @booking = Booking.find(params[:booking_id])
    @chatroom = Chatroom.where(booking_id: @booking)
    # @chatrooms = Chatroom.where(user_id: current_user)
  end

  def show
    # @booking = Booking.find(params[:booking_id])
    # @chatroom = Chatroom.new(name: @booking.user.first_name)
    # # @chatroom = Chatroom.where(booking_id: @booking)
    @message = Message.new()
    @chatroom = Chatroom.find(params[:id])
    @dog = Dog.where(id: @chatroom.booking_id)
  end

  def create
    # how get the booking?
    @booking = Booking.find(params[:booking_id])
    @chatroom = Chatroom.new(name: @booking.user.first_name)
    @chatroom.user_id = current_user
    @chatroom.booking_id = @booking
    if @chatroom.save
      redirect_to booking_chatrooms_path(@chatroom.id)
    end
  end
end
