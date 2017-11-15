class HatPicsController < ApplicationController
  before_action :set_picture, only: [:show, :delete]
  before_action :authorize_user, only: [:new, :destroy, :create]
  def index
    #authorize_user
    @hat_pics = HatPic.all
  end

  def create
    if logged_in?
      @hat_pic = HatPic.new(hat_pic_params)
      if @hat_pic.save
        redirect_to hat_pic_path(@hat_pic)
      else
        render :new
      end
    else
      redirect_to login_path
    end
  end

  def new
    @user = User.find(session[:id])
    @hat_pic = HatPic.new
  end

  def show
    @comment = Comment.new
  end

  def destroy
    @hat_pic = HatPic.find(params[:id])
    @hat_pic.destroy
    redirect_to hat_pics_path
  end

  def set_picture
    @hat_pic = HatPic.find(params[:id])
  end

  private

  def hat_pic_params
    params.require(:hat_pic).permit(:hat_id, :avatar)
  end

end
