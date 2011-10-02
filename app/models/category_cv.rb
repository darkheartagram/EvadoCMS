class CategoryCv < ActiveRecord::Base
	has_many :cv_entries
  belongs_to :cv
end
