class RenameDescriptiongInBowsToDescription < ActiveRecord::Migration[5.1]
  def change
    rename_column :bows, :descriptiong, :description
  end
end
