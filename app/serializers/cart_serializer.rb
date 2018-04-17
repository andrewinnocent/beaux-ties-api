class CartSerializer < ActiveModel::Serializer
  attributes :id, :payment_total, :active, :bows

  def bows
    object.bows.pluck(:id)
  end
end
