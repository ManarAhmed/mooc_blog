class User < ActiveRecord::Base
  has_many :comments
  has_many :lectures
  has_many :courses
	mount_uploader :profile_picture, ProfilePictureUploader
	acts_as_voter
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
	       :recoverable, :rememberable, :trackable, :validatable
end
