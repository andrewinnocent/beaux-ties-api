class ChangeColumnDefaultInWishes < ActiveRecord::Migration[5.1]
  def change
    change_column_default :wishes, :active, true
  end
end
