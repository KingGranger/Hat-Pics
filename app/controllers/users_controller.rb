class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :delete]
  before_action :authorize_user, only: [:edit, :update, :destroy]

  def show
  end

  def edit
  end

  def update
  end

  def delete
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:id] = @user.id
      redirect_to user_path(@user)
    else
      flash.now[:notice] = "Something was wrong, try again"
      render :new
    end
  end

  def new
    @user = User.new
  end

  def set_user
    @user = User.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
