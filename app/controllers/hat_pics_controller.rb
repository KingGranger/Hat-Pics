class HatPicsController < ApplicationController
  before_action :set_picture, only: [:show, :delete]
  def index
  end

  def create
    @hat_pic = HatPic.new(hat_pic_params)
    if @hat_pic.save
      redirect_to hat_path(@hat_pic)
    else
      render :new
    end
  end

  def new
    @hat_pic = HatPic.new
  end

  def show
  end

  def delete
  end

  def set_picture
    @hat_pic = HatPic.find(params[:id])
  end

  private

  def hat_pic_params
    params.require(:hat_pic).permit(:avatar)
  end

end
