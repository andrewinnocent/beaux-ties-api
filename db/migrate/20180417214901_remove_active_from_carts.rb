class RemoveActiveFromCarts < ActiveRecord::Migration[5.1]
  def change
    remove_column :carts, :active, :boolean
  end
end
