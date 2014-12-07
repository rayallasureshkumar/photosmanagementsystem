class Album < ActiveRecord::Base
  attr_accessible :discription, :name
  has_many :photos
end
