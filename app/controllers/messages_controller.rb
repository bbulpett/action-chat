class MessagesController < ApplicationController
  def index
  end
  def create
  	# broadcast incoming messages to the messages stream
  	ActionCable.server.broadcast 'messages',
	  	message: params[:message][:body],
	  	username: cookies.signed[:username]
  # respond with status code for every successful request
  	head :ok
  end
end
