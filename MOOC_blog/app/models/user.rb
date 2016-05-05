class User < ActiveRecord::Base
  has_many :comments ,:dependent=>:delete_all
  has_many :lectures ,:dependent=>:delete_all
  has_many :courses ,:dependent=>:delete_all
  
	mount_uploader :profile_picture, ProfilePictureUploader
	acts_as_voter
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
	       :recoverable, :rememberable, :trackable, :validatable
end
