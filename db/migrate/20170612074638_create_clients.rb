class CreateClients < ActiveRecord::Migration[5.0]
  def self.up
    create_table :clients do |t|
      t.string :name
      t.boolean :is_active, default: false

      t.timestamps
    end
  end
  def self.down
    drop_table :clients
  end
end
