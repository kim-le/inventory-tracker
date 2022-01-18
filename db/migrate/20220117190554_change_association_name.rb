class ChangeAssociationName < ActiveRecord::Migration[7.0]
  def change
    rename_table :warehouse_products, :products_warehouses
  end
end
