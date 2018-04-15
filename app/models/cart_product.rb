class CartProduct < ApplicationRecord
  belongs_to :users
  belongs_to :carts
end
