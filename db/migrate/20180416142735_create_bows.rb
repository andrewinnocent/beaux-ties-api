class CreateBows < ActiveRecord::Migration[5.1]
  def change
    create_table :bows do |t|
      t.string :name
      t.string :style
      t.string :color
      t.string :fabric
      t.string :descriptiong
      t.money :price
      t.integer :stock_quantity
      t.string :image

      t.timestamps
    end
  end
end
