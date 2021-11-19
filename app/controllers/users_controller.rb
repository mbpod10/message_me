class UsersController  < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    puts "User params: #{user_params}"
  end

  private

  def user_params
    params.require(:user).permit(:username, :email)
  end

end