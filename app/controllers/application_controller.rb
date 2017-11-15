class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def logged_in?
    !!session[:id]
  end

  def authorize_user
    redirect_to login_path(url: request.url) unless session.include? :id
  end
end
