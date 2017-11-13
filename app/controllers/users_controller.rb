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
  end

  def new
  end

  def set_user
    @user = User.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:username, :email)
  end
end
