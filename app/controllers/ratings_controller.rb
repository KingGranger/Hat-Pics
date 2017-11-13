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
  end

  def new
  end

  def set_rating
    @rating = Rating.find(params[:id])
  end

  private
  def rating_params
    params.require(:rating).permit()
  end
end
