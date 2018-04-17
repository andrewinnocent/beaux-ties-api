class DropCartProductsTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :cart_products
  end
end
