class HatsController < ApplicationController

  def show
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

  def delete
    @hat = Hat.find(params[:id])
    @user = @hat.user
    @hat.destroy
    flash[:notice] = "That mohfuckas gon'"
    redirect_to user_path(@user)
  end

  private

  def hat_params
    params.require(:hat)
  end

end
