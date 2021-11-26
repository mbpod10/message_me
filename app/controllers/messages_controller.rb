class MessagesController < ApplicationController
before_action :require_user, only: [:create]

  def create
    message = current_user.messages.build(message_params)
    if message.save
      # redirect_to root_path
      ActionCable.server.broadcast  "chatroom_channel", 
                                    {mod_message: message_render(message)}
    end
  end

  def destroy
    message = Message.find(params[:id])
    ActionCable.server.broadcast  "chatroom_channel", 
                                    {delete_message: true, id: message.id}
    message.destroy
  end

  private
  def message_params
    params.require(:message).permit(:body)
  end

  def message_render(message)
    render(partial: 'message', locals: {message: message})
  end

  def delete_render
    render(partial: 'message')
  end

end