class Course < ActiveRecord::Base
	has_many :lectures
	belongs_to :user
end
