class CreateProjects < ActiveRecord::Migration[5.0]
  def self.up
    create_table :projects do |t|
      t.string :name
      t.references :client, foreign_key: true
      t.references :region, foreign_key: true

      t.timestamps
    end
  end
  def self.down
    drop_table :projects
  end
end
