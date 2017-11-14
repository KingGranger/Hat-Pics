class SessionsController < ApplicationController
  def new
  end

  def create
    if request.query_string.present?
      url = CGI.parse(URI(request.referrer).query)["url"][0]
    else url=nil
    end
    @user = User.find_by(email: params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
      session[:id] = @user.id
      if url
        redirect_to url
      else 
        redirect_to hat_pics_path
      end
    else
      flash[:notice] = "Something was wrong, try again"
      redirect_to login_path(url: url)
    end
  end

  def destroy
    session[:id] = nil
    redirect_to hat_pics_path

  end

  private 

end
