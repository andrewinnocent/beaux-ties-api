class WishSerializer < ActiveModel::Serializer
  attributes :id, :active, :bow_id, :user_id

end
