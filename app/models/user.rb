class User < ApplicationRecord

	has_many :articles

	before_save { self.email = email.downcase }
	validates :username, presence: true, length: {minimum: 3, maximum: 25}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
	validates :email, presence: true, uniqueness: {case_sensitive: false}, format: { with: VALID_EMAIL_REGEX }

	has_secure_password

end
