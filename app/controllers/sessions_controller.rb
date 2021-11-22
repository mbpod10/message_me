class SessionsController < ApplicationController
  before_action :logged_in_redirect, only: [:new, :create]

  def new
  end

  def create
    user = User.find_by(username: get_credentials[:username])
    if user && user.authenticate(get_credentials[:password])
      session[:user_id] = user.id
      flash[:success] = "#{user.username} Logged In"
      redirect_to root_path
    else
      flash.now[:error] = "Invalid Username Or Password"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "Successfully Logged Out"
    redirect_to login_path
  end

  private 

  
  def get_credentials
    params.require(:session).permit(:username, :password)
  end

  def logged_in_redirect
    if logged_in?
      flash[:error] = "You are already logged in"
    end
  end

end