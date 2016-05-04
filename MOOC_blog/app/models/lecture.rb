class Lecture < ActiveRecord::Base
	belongs_to :course
	belongs_to :user
  has_many :comments  # , :as=>:recipient
#  has_many :upload_files
  
	acts_as_votable
	acts_as_commentable
end
