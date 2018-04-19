class RemovePaymentTotalFromCarts < ActiveRecord::Migration[5.1]
  def change
    remove_column :carts, :payment_total, :money
  end
end
