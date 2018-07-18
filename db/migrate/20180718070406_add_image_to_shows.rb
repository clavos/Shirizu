class AddImageToShows < ActiveRecord::Migration[5.2]
  def change
    add_column :shows, :image, :string
  end
end
