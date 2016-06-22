class Post < ActiveRecord::Base
  validates_presence_of :title, :content
  validates :content, length: { maximum: 170 }
  belongs_to :user
end
