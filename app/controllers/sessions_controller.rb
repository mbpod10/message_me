class SessionsController < ApplicationController
  before_action :logged_in_redirect, only: [:new, :create]

  def new
  end

  def create
    user = User.find_by(username: get_credentials[:username])
    if user && user.authenticate(get_credentials[:password])
      session[:user_id] = user.id
      user.toggle!(:online)
      # user.online = [true]
      flash[:success] = "#{user.username} Logged In"
      ActionCable.server.broadcast  "users_channel", 
                                    {user: user_render_login(user), login: "login"}
      redirect_to root_path
      
    else
      flash.now[:error] = "Invalid Username Or Password"
      render 'new'
    end
  end

  def destroy
    current_user.toggle!(:online)
    # # current_user.online = [false]
    ActionCable.server.broadcast  "users_channel", 
                                    {user: user_render_logout(current_user), logout: "logout",
                                    id: current_user.id}
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

  def user_render_login(user)
    render_to_string(partial: "users/user", locals: {user: user})
  end
  
  def user_render_logout(user)
    render_to_string(partial: "users/user", locals: {user: user})
  end

end