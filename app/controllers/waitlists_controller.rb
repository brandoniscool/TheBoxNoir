class WaitlistsController < ApplicationController

def create
	Waitlist.create!(params[:waitlist].permit(:email_address, :gender))
	redirect_to :back
end
end
