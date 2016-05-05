class Course < ActiveRecord::Base
	has_many :lectures ,:dependent=>:delete_all
	belongs_to :user
  mount_uploader :image, ImageUploader 

end
