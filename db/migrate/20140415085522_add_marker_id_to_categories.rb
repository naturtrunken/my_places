class AddMarkerIdToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :marker_id, :integer
  end
end
