class Cart < ApplicationRecord
  belongs_to :user
  has_many :cart_products
  has_many :beauxties, through: :cart_products
end
