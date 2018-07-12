class AddShowToSeason < ActiveRecord::Migration[5.2]
  def change
    add_reference :seasons, :show, foreign_key: true
  end
end
