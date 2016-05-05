class Course < ActiveRecord::Base
	has_many :lectures
	belongs_to :user
  mount_uploader :image, ImageUploader 

end
