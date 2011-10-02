class Cv < ActiveRecord::Base
  has_many :category_cvs, 		:dependent 		=> :destroy
  belongs_to :user
end
