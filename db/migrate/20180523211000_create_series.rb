class CreateSeries < ActiveRecord::Migration[5.2]
  def change
    create_table :series do |t|
      t.string :name
      t.string :synopsis
      t.date :startDate
      t.date :endDate
      t.string :nationality
      t.string :cover

      t.timestamps
    end
  end
end
