class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :delete]

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
      redirect_to hat_path(@user)
    else
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
    params.require(:user).permit(:username, :email)
  end
end