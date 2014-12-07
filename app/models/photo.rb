class Photo < ActiveRecord::Base
  attr_accessible :discription, :image_content_type, :image_file_name, :image_file_size, :name
  belongs_to :album
end
