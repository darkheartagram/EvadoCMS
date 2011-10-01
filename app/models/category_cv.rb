class CategoryCv < ActiveRecord::Base
	has_many :cv_entries
end
