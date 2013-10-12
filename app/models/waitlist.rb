class Waitlist < ActiveRecord::Base


validates :email_address,
	presence: true,
	uniqueness: true,
	format: {with: /\A.+@.+\..+/}

validates :gender,
	presence: false,
	inclusion: { in: %w(male female) },
	allow_nil: true
	
end
