class WishSerializer < ActiveModel::Serializer
  attributes :id, :active
  has_one :user
  has_one :bow
end
