class RenameCartsIdToCartIdInBowsCarts < ActiveRecord::Migration[5.1]
  def change
    rename_column :bows_carts, :carts_id, :cart_id
  end
end
