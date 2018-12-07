class AddItemstoOutfit < ActiveRecord::Migration[5.2]
  def change
    add_column :outfits, :items, :string
  end
end
