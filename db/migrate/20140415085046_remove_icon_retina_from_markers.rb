class RemoveIconRetinaFromMarkers < ActiveRecord::Migration
  def up
    remove_column :markers, :icon_retina
  end

  def down
    add_column :markers, :icon_retina, :string
  end
end
