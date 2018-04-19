class BowSerializer < ActiveModel::Serializer
  attributes :id, :name, :style, :color, :fabric, :description, :price, :stock_quantity, :image
end
