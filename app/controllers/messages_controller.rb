class MessagesController < ApplicationController

	def index
	  @messages = Message.all
	end

    def new
      @message = Message.new
    end

	def create
      @message = Message.new(message_params)
      @message.user = current_user
      	 
      if @message.save
      	flash[:notice] = "Wysłałeś wiadomość"
	    redirect_to root_path

	  else
	    render 'new'
	  end

	end

private

	def message_params
		params.require(:message).permit(:name, :email, :body, :user_id)
	end

end
