class ChatroomController  < ApplicationController
  before_action :require_user, only: [:index, :create] 

  def index
    @message = Message.new
    @messages = Message.custom_display
  end

  def create

  end

end