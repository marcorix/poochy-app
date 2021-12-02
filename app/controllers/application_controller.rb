class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  def favorite_class
    return @favorite_exist ? 'saved' : 'unsaved'
  end

  helper_method :favorite_class

  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end
end
