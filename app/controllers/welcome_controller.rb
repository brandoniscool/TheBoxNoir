class WelcomeController < ApplicationController
  layout 'welcome'
  
  def index
		@waitlist = Waitlist.new
  end
  def reserve
		@waitlist = Waitlist.new
  end
end
