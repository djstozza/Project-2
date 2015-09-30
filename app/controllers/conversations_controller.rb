class ConversationsController < ApplicationController
	before_action :check_if_logged_in
	before_action :conversation, :only => [:show]

	def new
    end

	def create
		recipients = User.find_by(id: conversation_params[:recipients])
		conversation = @current_user.send_message(recipients, conversation_params[:body], conversation_params[:subject]).conversation
		flash[:success] = "Your message was successfully sent!"
		redirect_to conversation_path(conversation)
	end

	def show
		@receipts = conversation.receipts_for(@current_user)
		# mark conversation as read
		conversation.mark_as_read(@current_user)
	end

	def reply
		@current_user.reply_to_conversation(conversation, message_params[:body])
		flash[:notice] = "Your reply message was successfully sent!"
		redirect_to conversation_path(conversation)
	end

	def trash
		conversation.move_to_trash(@current_user)
		redirect_to mailbox_inbox_path
	end

	def untrash
		conversation.untrash(@current_user)
		redirect_to mailbox_inbox_path
	end

	private
	def check_if_logged_in
		redirect_to root_path unless @current_user.present?
	end

	def conversation_params
		params.require(:conversation).permit(:subject, :body, :recipients)
	end

	def message_params
		params.require(:message).permit(:body, :subject)
	end
end
