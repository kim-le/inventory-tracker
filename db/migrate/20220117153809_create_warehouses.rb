class CreateWarehouses < ActiveRecord::Migration[7.0]
  def change
    create_table :warehouses do |t|
      t.string :name
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state_province
      t.string :zip_postal
      t.string :country

      t.timestamps
    end
  end
end
