class CreateBlockFields < ActiveRecord::Migration[5.0]
  def self.up
    create_table :block_fields do |t|
      t.references :block, foreign_key: true
      t.string :name
      t.string :blk_key
      t.string :blk_val

      t.timestamps
    end
  end
  def self.down
    drop_table :block_fields
  end
end
