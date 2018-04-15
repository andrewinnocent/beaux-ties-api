class CreateCartProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :cart_products do |t|
      t.references :users, foreign_key: true
      t.references :carts, foreign_key: true

      t.timestamps
    end
  end
end
