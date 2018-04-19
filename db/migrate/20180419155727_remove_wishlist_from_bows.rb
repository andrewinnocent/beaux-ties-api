class RemoveWishlistFromBows < ActiveRecord::Migration[5.1]
  def change
    remove_column :bows, :wishlist, :boolean
  end
end
