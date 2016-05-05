class Lecture < ActiveRecord::Base
  mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
	mount_uploader :image, ImageUploader 
  belongs_to :course
	belongs_to :user
  has_many :comments  # , :as=>:recipient
#  has_many :upload_files
  
	acts_as_votable
	acts_as_commentable
end
