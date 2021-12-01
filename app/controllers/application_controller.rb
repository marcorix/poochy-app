class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  def favorite_class
    return @favorite_exist ? 'unsaved' : 'saved'
  end

  helper_method :favorite_class
end
