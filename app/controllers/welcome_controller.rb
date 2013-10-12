class WelcomeController < ApplicationController
  def index
		@waitlist = Waitlist.new
  end
end
