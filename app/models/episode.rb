class Episode < ApplicationRecord
  belongs_to :season, optional:true
  has_many :comments
end
