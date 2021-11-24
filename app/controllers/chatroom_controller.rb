class ChatroomController  < ApplicationController
  before_action :require_user, only: [:index, :create] 

  def index
    @message = Message.new
    @messages = Message.custom_display
    # @user = User.new
    @users = User.find_online
    # @users = User.all
  end

  def create

  end

end