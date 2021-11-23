class ChatroomController  < ApplicationController
  before_action :require_user, only: [:index, :create] 

  def index
    @message = Message.new
    @messages = Message.custom_display
    @users = User.find_online
  end

  def create

  end

end