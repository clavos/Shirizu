class ShowCompany < ApplicationRecord
  belongs_to :show
  belongs_to :company
end
