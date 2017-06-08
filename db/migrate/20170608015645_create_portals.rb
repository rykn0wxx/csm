class CreatePortals < ActiveRecord::Migration[5.0]
  def self.up
    create_table :portals do |t|
      t.string :name, null: false, default: ""
      t.boolean :published, default: false

      t.timestamps
    end
  end
  def self.down
    drop_table :portals
  end
end
