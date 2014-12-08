class Photo < ActiveRecord::Base
  attr_accessible :discription, :image_content_type, :image_file_name, :image_file_size, :name, :image 
  belongs_to :album

 has_attached_file :image, :styles => 
          { :medium => "300x300>", :thumb => "100x100>" }
          validates_attachment_content_type :image, :content_type => %w(image/jpeg image/jpg image/png)
end
