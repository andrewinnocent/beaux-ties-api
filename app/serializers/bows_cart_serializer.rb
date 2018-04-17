class BowsCartSerializer < ActiveModel::Serializer
  attributes :id
  has_one :carts
  has_one :bows
end
