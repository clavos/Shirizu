class CreateShowCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :show_companies do |t|
      t.references :show, foreign_key: true
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
