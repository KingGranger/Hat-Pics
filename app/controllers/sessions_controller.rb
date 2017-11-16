class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    # if request.query_string.present?
    #   url = CGI.parse(URI(request.referrer).query)["url"][0]
    # else
    #   url=nil
    # end
    @user = User.find_by(email: params[:user][:email]) 
    #byebug
    if !!@user && @user.authenticate(params[:user][:password])
      session[:id] = @user.id
      # if url
        # redirect_to url
      # else
        redirect_to hat_pics_path(@user)
      # end
    else
      flash.now[:notice] = "Invalid email/password combination, try again"
      render :new
    end
  end

  def destroy
    session[:id] = nil
    redirect_to hat_pics_path
  end

end
