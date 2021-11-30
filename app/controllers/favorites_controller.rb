class FavoritesController < ApplicationController

  def index
    @favorites = Favorite.where(user: current_user)
  end

  def update
    favorite = Favorite.where(dog: Dog.find(params[:dog]), user: current_user)
    if favorite == []
      #create the favorite
      Favorite.create(dog: Dog.find(params[:dog]), user: current_user)
      @favorite_exist = true
    else
      #delete the favorite
      favorite.destroy_all
      @favorite_exist = false
    end
    respond_to do |format|
      format.html {}
      format.js {}
    end
  end
end
