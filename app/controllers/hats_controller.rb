class HatsController < ApplicationController
  before_action :authorize_user, only: [:create, :edit, :update, :destroy]

  def index
    @hats = Hat.all
    if params[:search]
      @hats = Hat.search(params[:search]).order("created_at DESC")
      else
        @hats = Hat.all.order("created_at DESC")
      end
  end

  def show
    authorize_user
    @hat = Hat.find(params[:id])
  end

  def new
    @hat = Hat.new
  end

  def create
    @hat = Hat.new(hat_params)
    if @hat.save
      redirect_to hat_path(@hat)
    else
      render :new
    end
  end

  def edit
    @hat = Hat.find(params[:id])
  end

  def update
    @hat = Hat.find(params[:id])
    @hat.assign_attributes(hat_params)
    if @hat.save
      redirect_to hat_path(@hat)
    else
      render :edit
    end
  end

  def destroy
    @hat = Hat.find(params[:id])
    @user = @hat.user
    @hat.destroy
    flash[:notice] = "That mohfuckas gon'"
    redirect_to hats_path
  end

  private

  def hat_params
    params.require(:hat).permit(:brand, :category, :color, :user_id, :name)
  end

end
