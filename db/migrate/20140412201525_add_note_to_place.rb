class AddNoteToPlace < ActiveRecord::Migration
  def change
    add_column :places, :note, :text
  end
end
