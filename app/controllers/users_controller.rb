class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @dogs = Dog.where(user_id: current_user.id)
  end
end
