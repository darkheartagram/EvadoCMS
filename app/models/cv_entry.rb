class CvEntry < ActiveRecord::Base
	attr_accessible:entry
	belongs_to :category_cvs
end
