class CreateBeauxties < ActiveRecord::Migration[5.1]
  def change
    create_table :beauxties do |t|
      t.string :name
      t.string :style
      t.string :color
      t.string :fabric
      t.string :description
      t.money :price
      t.integer :stock_quantity
      t.string :image

      t.timestamps
    end
  end
end
