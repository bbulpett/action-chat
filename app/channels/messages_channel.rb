class MessagesChannel < ApplicationCable::MessagesChannel
	# subscribed method streams client's broadcasts to the messages stream (when they're subscribed).
	def subscribed
		stream_from 'messages'
	end
end