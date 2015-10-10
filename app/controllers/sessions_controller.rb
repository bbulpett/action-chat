class SessionsController < ApplicationController
  def new
  end
  # Set a signed cookie (username) to recognize the user
  def create
  	cookies.signed[:username] = params[:session][:username]
  	redirect_to messages_path
  end
end
