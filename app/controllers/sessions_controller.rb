class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
      session[:id] = @user.id
      redirect_to hat_pics_path
    else
      flash[:notice] = "Something was wrong, try again"
      redirect_to login_path
    end
  end

  def destroy
    session[:id] = nil
    redirect_to hat_pics_path

  end

  private 

end
