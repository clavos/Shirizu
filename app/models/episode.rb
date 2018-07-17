class Episode < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :season, optional:true
  has_many :comments
  has_and_belongs_to_many :users
end
