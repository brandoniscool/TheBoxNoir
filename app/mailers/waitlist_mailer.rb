class WaitlistMailer < ActionMailer::Base
  #default from: "from@example.com"
  
	def welcome_email(waitlist)
    @waitlist = waitlist
    @url = 'http://example.com/login'
    mail(to: @waitlist.email_address, from: 'info@theboxnoir.com', subject: "Thank you. Welcome to The Box Noir.")
  end
  
end
