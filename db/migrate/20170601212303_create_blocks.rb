class CreateBlocks < ActiveRecord::Migration[5.0]
  def self.up
    create_table :blocks do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
  def self.down
    drop_table :blocks
  end
end
