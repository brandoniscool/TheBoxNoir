class SessionController < ApplicationController

def create
  user = User.find_by_email_address(params[:session][:email_address])
  if user && user.authenticate(params[:session][:password])
    session[:user_id] = user.id
		redirect_to :back
  else
    flash.now[:alert] = "Invalid email or password"
    render "new"
  end
end

end
