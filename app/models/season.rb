class Season < ApplicationRecord
  belongs_to :show, optional:true
  has_many :episodes
end
