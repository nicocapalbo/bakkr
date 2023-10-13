class Product < ApplicationRecord
  has_many :order_products, dependent: :destroy
  has_many :orders, through: :order_products
  has_many :product_ingredients, dependent: :destroy
  has_many :ingredients, through: :product_ingredients

  enum :product_type, cake: 0, brigadeiro: 1

  # Add validations and associations as needed
  def cake?
    product_type === 'cake'
  end

  def brigadeiro?
    product_type === 'brigadeiro'
  end
end
