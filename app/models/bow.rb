class Bow < ApplicationRecord
  has_many :bows_carts
  has_many :carts, through: :bows_carts
end
