class AddIndexToUpc < ActiveRecord::Migration[7.0]
  def change
    add_index :products, :UPC, unique: true
  end
end
