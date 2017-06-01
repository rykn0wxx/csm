class CreateGauges < ActiveRecord::Migration[5.0]
  def self.up
    create_table :gauges do |t|
      t.string :name
      t.string :subdomain

      t.timestamps
    end
  end
  def self.down
    drop_table :gauges
  end
end
