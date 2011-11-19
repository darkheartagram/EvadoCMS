class Thesis < ActiveRecord::Base
  acts_as_taggable_on :tags

  has_many :photos, :dependent => :destroy
  accepts_nested_attributes_for :photos

  def self.tag_thesis_list(page, tag)
    options = Thesis.find_options_for_find_tagged_with(tag).merge :page => page, :per_page => 10, :order => 'date DESC'
    paginate(options)
  end
end
