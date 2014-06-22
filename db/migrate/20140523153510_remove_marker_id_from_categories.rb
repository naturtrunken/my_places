class RemoveMarkerIdFromCategories < ActiveRecord::Migration
  def change
    remove_column :categories, :marker_id
  end
end
