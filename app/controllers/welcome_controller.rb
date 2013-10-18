class WelcomeController < ApplicationController
  def index
		@waitlist = Waitlist.new
  end
  def reserve
		@waitlist = Waitlist.new
  end
end
