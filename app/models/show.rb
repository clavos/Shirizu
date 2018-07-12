class Show < ApplicationRecord
  has_many :seasons
  has_many :show_companies
  has_many :companies, through: :show_companies
end