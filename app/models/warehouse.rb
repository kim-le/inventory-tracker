class Warehouse < ApplicationRecord
  has_many :warehouse_products
  has_many :products, through: :warehouse_products

  validates :name, presence: true
  validates :address_1, presence: true
  validates :city, presence: true
  validates :state_province, presence: true
  validates :zip_postal, presence: true
  validates :country, presence: true

  def country_name
    country = ISO3166::Country[self.country]
    country.translations[I18n.locale.to_s] || country.iso_short_name
  end
end
