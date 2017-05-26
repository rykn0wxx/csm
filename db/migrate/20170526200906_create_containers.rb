class CreateContainers < ActiveRecord::Migration[5.0]
  def self.up
    create_table :containers do |t|
      t.string :name
      t.integer :order
      t.references :portal, foreign_key: true
      t.string :css_class

      t.timestamps
    end
  end
  def self.down
  	drop_table :containers
  end
end
