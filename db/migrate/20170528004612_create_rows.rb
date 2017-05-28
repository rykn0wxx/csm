class CreateRows < ActiveRecord::Migration[5.0]
  def self.up
    create_table :rows do |t|
      t.string :name
      t.references :container, foreign_key: true
      t.integer :position
      t.string :row_class

      t.timestamps
    end
  end
  def self.down
    drop_table :rows
  end
end
