class User < ApplicationRecord
	validates :email, presence: true, length: {minimum: 5}
  	validates :firstname, presence: true
  	validates :lastname, presence: true
  	validates :password, presence: true, length: { minimum: 8 }

	has_secure_password
	
	has_many :comments
	has_many :tickets
end
