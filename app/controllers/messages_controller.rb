class MessagesController < ApplicationController
before_action :require_user, only: [:create, :destroy]
before_action :find_message, only: [:destroy]
before_action :require_same_user, only: [:destroy]

  def create
    message = current_user.messages.build(message_params)
    if message.save     
      ActionCable.server.broadcast  "chatroom_channel", 
                                    {mod_message: message_render(message)}
    end
  end

  def destroy
    ActionCable.server.broadcast  "chatroom_channel", 
                                    {delete_message: true, id: @message.id}
    @message.destroy
  end

  private
  def message_params
    params.require(:message).permit(:body)
  end

  def message_render(message)
    render(partial: 'message', locals: {message: message})
  end

  def find_message
    @message = Message.find(params[:id])
  end

  def require_same_user
    if current_user != @message.user
      flash[:error] = "You Can Only Delete Your Own Messages!"
      redirect_to root_path
      # render(partial: 'message')
      return
    end
  end

end