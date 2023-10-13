class Customer < ApplicationRecord
  has_many :orders, dependent: :destroy

  validates :name, :email, presence: true
  validates :email, format: { with: /\A[^@\s]+@[^@\s]+\z/ }
end
