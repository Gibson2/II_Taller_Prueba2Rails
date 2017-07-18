class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price , null: false
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
