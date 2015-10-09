class MessagesController < ApplicationController
  def index
  end
  # respond with status code for every successful request
  def create
  	head :ok
  end
end
