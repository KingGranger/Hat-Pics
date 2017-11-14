class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def users
    redirect_to controller: 'sessions', action: 'new' unless session[:name]
  end
end
