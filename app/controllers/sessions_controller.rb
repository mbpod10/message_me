class SessionsController < ApplicationController

  def new

  end

  def create
    puts "CREDENTIALS: #{get_credentials}"
    user = User.find_by(username: get_credentials[:username])
    if user && user.authenticate(get_credentials[:password])
      puts "TRUEEEEEEEEEEE"
    else
      puts "FALSEEEEEEE"
    end
  end

  private 

  
  def get_credentials
    params.require(:session).permit(:username, :password)
  end

end