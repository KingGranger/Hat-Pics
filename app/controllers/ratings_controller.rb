class RatingsController < ApplicationController
  before_action :set_rating, only: [:show, :edit, :delete]
  def show
  end

  def edit
  end

  def update
  end

  def delete
  end

  def create
    @rating = Rating.new(rating_params)
    @rating.score = params[:score]
    @rating.save
    redirect_to hat_pic_path(params[:rating][:hat_pic_id])
  end

  def new
  end

  def set_rating
    @rating = Rating.find(params[:id])
  end

  private
  def rating_params
    params.require(:rating).permit(:hat_pic_id, :user_id)
  end
end
