class AddKnownToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :known, :boolean
  end
end
