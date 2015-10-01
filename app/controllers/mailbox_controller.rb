class MailboxController < ApplicationController
	before_action :check_if_logged_in
  def api
    @inbox = @current_user.mailbox.inbox
    render json: @inbox
  end

	def inbox
    	@inbox = @current_user.mailbox.inbox
   		@active = :inbox
  	end

  	def sent
    	@sent = @current_user.mailbox.sentbox
    	@active = :sent
  	end

  	def trash
    	@trash = @current_user.mailbox.trash
    	@active = :trash
  	end

	def check_if_logged_in
  		redirect_to root_path unless @current_user.present?
 	end
end