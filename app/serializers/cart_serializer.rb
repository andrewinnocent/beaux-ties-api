class CartSerializer < ActiveModel::Serializer
  attributes :id, :beauxtie_quantity, :payment_total, :active

  def bows
    object.bows.pluck(:id)
  end
end
