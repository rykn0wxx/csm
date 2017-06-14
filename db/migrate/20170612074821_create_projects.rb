class CreateProjects < ActiveRecord::Migration[5.0]
  def self.up
    create_table :projects do |t|
      t.references :region, foreign_key: true
      t.references :client, foreign_key: true
      t.string :name
      t.boolean :is_active, default: false

      t.timestamps
    end
  end
  def self.down
    drop_table :projects
  end
end
