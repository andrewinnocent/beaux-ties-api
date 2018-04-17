class RemoveBeauxtieQuantityFromCarts < ActiveRecord::Migration[5.1]
  def change
    remove_column :carts, :beauxtie_quantity, :integer
  end
end
