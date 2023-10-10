class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_products, dependent: :destroy
  has_many :products, through: :order_products

  enum :status, [:open, :archived, :cancelled, :complete], default: :open
  enum :payment_status, [:pending, :paid], default: :pending
  enum :deliver_method, [:pickup, :delivery]
end
