class BowsCartSerializer < ActiveModel::Serializer
  attributes :id, :bow_id, :cart_id

  # def bows
  #   object.bows.pluck(:id)
  # end
end
