class User < ActiveRecord::Base
  attr_accessible :confirm_password, :email, :password
   validates_presence_of :email, :password, :confirm_password
   validates_uniqueness_of :email
   validates_confirmation_of :password
end
