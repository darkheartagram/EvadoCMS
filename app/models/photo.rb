require 'paperclip'

class Photo < ActiveRecord::Base
  belongs_to :thesis

  has_attached_file :data, :styles => {  :thumb => "100x100#" }
  validates_attachment_content_type :data, :content_type => 'image/jpeg', :message => "has to be in jpeg format"
end
