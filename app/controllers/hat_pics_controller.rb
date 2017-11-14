class HatPicsController < ApplicationController
  before_action :set_picture, only: [:show, :delete]
  def index
    @hat_pics = HatPic.all
  end

  def create
    @hat_pic = HatPic.new(hat_pic_params)
    if @hat_pic.save
      redirect_to hat_pic_path(@hat_pic)
    else
      render :new
    end
  end

  def new
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