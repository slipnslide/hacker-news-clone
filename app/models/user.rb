class User < ApplicationRecord
	has_secure_password
	validates :email, :username, presence:true, uniqueness:true
	validates :password, length:{minimum:6}
	validates_confirmation_of :password
	has_many :comments

end
