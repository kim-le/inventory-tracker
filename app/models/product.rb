class Product < ApplicationRecord
  has_many :warehouse_products
  has_many :warehouses, through: :warehouse_products

  validates :name, presence: true
  validates :UPC, presence: true
  validates_uniqueness_of :UPC
  validates :quantity, presence: true
end
