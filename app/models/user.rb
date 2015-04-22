class User < ActiveRecord::Base

	before_save {self.email = email.downcase }

	#validates the name field to not be empty
	validates :name, presence: true
	#validates name field to max length of 50
	validates :name, presence: true, length: {maximum: 50}

	#validates the email field to not be empty
	validates :email, presence: true
	#validates email field to max 255
	validates :email, presence: true, length: {maximum: 255}

	#for regular expression
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i


	#validates correct email format
	validates :email, format: { with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false }

	#validates emails should be unique


end
