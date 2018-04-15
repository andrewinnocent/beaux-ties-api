class CreateCarts < ActiveRecord::Migration[5.1]
  def change
    create_table :carts do |t|
      t.integer :beauxtie_quantity
      t.money :payment_total
      t.boolean :active

      t.timestamps
    end
  end
end
