class ChatroomController  < ApplicationController
  before_action :require_user, only: [:index, :create] 

  def index
    @message = Message.new
    @messages = Message.all
  end

  def create

  end

end