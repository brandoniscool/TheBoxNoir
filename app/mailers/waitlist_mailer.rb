class WaitlistMailer < ActionMailer::Base
  #default from: "from@example.com"
  
	def welcome_email(waitlist)
    @waitlist = waitlist
    @url = 'http://example.com/login'
    mail(to: @waitlist.email_address, subject: 'Welcome to My Awesome Site')
  end
  
end
