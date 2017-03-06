class Post < ActiveRecord::Base
  validates :title, presence: true, length: { maximum: 255 }
  validates :description, presence: true, length: { maximum: 255 }
  validates :bits, presence: true
end
