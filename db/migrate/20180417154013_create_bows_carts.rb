class CreateBowsCarts < ActiveRecord::Migration[5.1]
  def change
    create_table :bows_carts do |t|
      t.references :carts, foreign_key: true
      t.references :bows, foreign_key: true

      t.timestamps
    end
  end
end
