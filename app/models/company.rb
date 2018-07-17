class Company < ApplicationRecord
  has_many :show_companies
  has_many :shows, through: :show_companies
end
