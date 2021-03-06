class UsersController  < ApplicationController

  def show
    puts params
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    puts "User params: #{user_params}"
    @user = User.create(user_params)
    if @user.save
      redirect_to(users_path)
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

end