class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @dogs = Dog.where(user_id: @user)
    @review = Review.new
  end

  def profile
     @user = User.find(params[:user_id])
     @review = Review.new

  end

  def dashboard
    @user = User.find(params[:user_id])
    @dogs = Dog.where(user_id: @user)
  end
end
