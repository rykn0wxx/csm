class CreateBlocksGaugesJoinTable < ActiveRecord::Migration[5.0]
  def self.up
    create_join_table :blocks, :gauges do |t|
      t.references :block, foreign_key: true
      t.references :gauge, foreign_key: true
    end
  end
  def self.down
    drop_join_table :blocks, :gauges
  end
end
