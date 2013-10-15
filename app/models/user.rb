class User < ActiveRecord::Base

	has_secure_password validations: false #Validations for presence of password on create, confirmation of password (using a password_confirmation attribute) are automatically added. If you wish to turn off validations, pass validations: false as an argument. You can add more validations by hand if need be. 

	validates :password,
		:length => {:in => 5..30},
		:format => {:with => /\A\S*$\z/},
		:presence => {:on => :create}
end
