class CreateWishes < ActiveRecord::Migration[5.1]
  def change
    create_table :wishes do |t|
      t.references :user, foreign_key: true
      t.references :bow, foreign_key: true
      t.boolean :active, null: false, default: false

      t.timestamps
    end
  end
end
