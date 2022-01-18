class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :UPC
      t.integer :quantity
      t.decimal :weight, precision: 10, scale: 2
      t.text :description

      t.timestamps
    end
  end
end
