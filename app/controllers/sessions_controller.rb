class SessionsController < ApplicationController

  def new

  end

  def create
    puts "CREDENTIALS: #{get_credentials}"
  end

  private 

  
  def get_credentials
    params.require(:session).permit(:username, :password)
  end

end