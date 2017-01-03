class MessagesController < ApplicationController

	def login
		session[:username] = params[:username]
		redirect_to messages_url
	end
	
	def index
		#@username = session[:username]
		@messages = Message.all
		@new_message = Message.new(username: session[:username])
	
	end

	def create 
		@message = Message.create(body: params[:message][:body], username: session[:username])
		#publish the message 

		#change to JSON
		respond_to do |format|
			format.json {render json: {message: @message}}
			
		end

		#redirect_to messages_url
	end

	
end
