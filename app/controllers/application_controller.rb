class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :logged_in?

  def logged_in?
    !!session[:id]
  end

  def authorize_user
    redirect_to login_path(url: request.url) unless session.include? :id
  end
end
