class CreateDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :dishes do |t|
      t.string :name
      t.integer :price
      t.references :shop, null: false, foreign_key: true

      t.timestamps
    end
  end
end
