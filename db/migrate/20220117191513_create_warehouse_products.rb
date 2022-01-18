class CreateWarehouseProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :warehouse_products do |t|
      t.belongs_to :warehouse
      t.belongs_to :product
      t.timestamps
    end
  end
end
