class AddOutfitToItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :items, :outfit, foreign_key: true
  end
end
