class User < ActiveRecord::Base

	#validates the name field to not be empty
	validates :name, presence: true

	#validates the email field to not be empty
	validates :email, presence: true
end
