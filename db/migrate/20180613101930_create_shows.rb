class CreateShows < ActiveRecord::Migration[5.2]
  def change
    create_table :shows do |t|
      t.string :title
      t.string :storyline
      t.datetime :release_date
      t.datetime :end_date
      t.string :cover
    end
  end
end
