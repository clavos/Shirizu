class CreateSeries < ActiveRecord::Migration[5.2]
  def change
    create_table :series do |t|
      t.string :title
      t.string :synopsis
      t.string :nationality
    end
  end
end
