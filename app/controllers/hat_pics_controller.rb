class HatPicsController < ApplicationController
  before_action :set_picture, only: [:show, :delete]
  def index
  end

  def create
  end

  def new
  end

  def show
  end

  def delete
  end

  def set_picture
    @picture = HatPic.find(params[:id])
  end

  private

  def hat_params
    params.require(:hat_pic).permit(:picture, :uploader, :brand, :type, :color)
  end

end
