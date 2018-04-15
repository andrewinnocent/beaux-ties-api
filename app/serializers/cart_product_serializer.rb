class CartProductSerializer < ActiveModel::Serializer
  attributes :id
  has_one :users
  has_one :carts
end
