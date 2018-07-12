class Episode < ApplicationRecord
  belongs_to :season, optional:true
end
