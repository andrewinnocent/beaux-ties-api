class CartSerializer < ActiveModel::Serializer
  attributes :id, :beauxtie_quantity, :payment_total, :active
end
