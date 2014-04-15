class CreateMarkers < ActiveRecord::Migration
  def change
    create_table :markers do |t|
      t.string :name
      t.string :icon
      t.string :icon_retina

      t.timestamps
    end
  end
end
