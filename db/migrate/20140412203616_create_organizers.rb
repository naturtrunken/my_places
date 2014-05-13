class CreateOrganizers < ActiveRecord::Migration
  def change
    create_table :organizers do |t|
      t.string :name
      t.string :url
      t.text :note

      t.timestamps
    end
  end
end
