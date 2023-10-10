class Product < ApplicationRecord
  has_many :order_products, dependent: :destroy
  has_many :orders, through: :order_products
  has_many :product_ingredients, dependent: :destroy
  has_many :ingredients, through: :product_ingredients

  enum :type, cake: 0, other: 1

  # Add validations and associations as needed
end
