class Cart < ApplicationRecord
  belongs_to :user
  has_many :bows_carts
  has_many :bows, through: :bows_carts
end
