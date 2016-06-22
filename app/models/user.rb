class User < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :password
  has_many :posts
end
