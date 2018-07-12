class CreateEpisodes < ActiveRecord::Migration[5.2]
  def change
    create_table :episodes do |t|
      t.string :name
      t.string :storyline
      t.string :cover
      t.integer :runtime
      t.datetime :release_at

      t.timestamps
    end
  end
end
