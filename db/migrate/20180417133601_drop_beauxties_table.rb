class DropBeauxtiesTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :beauxties
  end
end
