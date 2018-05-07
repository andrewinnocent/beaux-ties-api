class BowsCartSerializer < ActiveModel::Serializer
  attributes :id, :bow_id, :cart_id, :total

  def total
    # p scope
    total = 0
    scope.bows_carts.pluck(:bow_id).each do |bow_id|
      bow = Bow.find(bow_id)
      total += bow.price
    end
    total
  end
end
