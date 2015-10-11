class MessagesController < ApplicationController
  def index
    @message = Message.new
  end
  def create
    message = Message.new(person_params)
    message.username = current_username
  	# broadcast incoming messages to the messages stream
  	ActionCable.server.broadcast 'messages',
	  	message: MessagesController.render(message)
    # respond with status code for every successful request
  	head :ok
  end

  private
    def person_params
      params.require(:message).permit(:body)
    end
end
