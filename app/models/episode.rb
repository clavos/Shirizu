class Episode < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :season, optional:true
  has_many :comments
end
