class CartSerializer < ActiveModel::Serializer
  attributes :id, :bows

  def bows
    object.bows.pluck(:id)
  end
end
