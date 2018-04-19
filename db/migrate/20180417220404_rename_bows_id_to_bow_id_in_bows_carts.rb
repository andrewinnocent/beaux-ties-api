class RenameBowsIdToBowIdInBowsCarts < ActiveRecord::Migration[5.1]
  def change
    rename_column :bows_carts, :bows_id, :bow_id
  end
end
