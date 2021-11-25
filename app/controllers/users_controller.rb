class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @dogs = Dog.where(user_id: @user)
    @review = Review.new
  end

end
