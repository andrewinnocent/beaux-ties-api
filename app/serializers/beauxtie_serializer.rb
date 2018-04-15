class BeauxtieSerializer < ActiveModel::Serializer
  attributes :id, :name, :style, :color, :fabric, :description, :price, :stock_quantity, :image
end
