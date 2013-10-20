class WaitlistsController < ApplicationController

def create
  wait = Waitlist.create(params[:waitlist].permit(:email_address, :gender, :type))
  
  if request.xhr?
    
    if wait.save
			WaitlistMailer.delay.welcome_email(wait) #send email
      render status: 200, :json => {:success => 'ok'}
    else
      render status: 406, :json => {:error => wait.errors.full_messages}
    end
    
  else
    redirect_to :back
  end

end

end
