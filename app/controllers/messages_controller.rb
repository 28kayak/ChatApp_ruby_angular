class MessagesController < ApplicationController

	def login
		session[:username] = params[:username]
		redirect_to messages_url
	end
	
	def index
		#@username = session[:username]
		@messaegs = Message.all 
		@new_message = Message.new(username: session[:username])
	
	end

	def create 
		Message.create(body: params[:message][:body], username: session[:username])
		redirect_to messages_url
	end

	
end
