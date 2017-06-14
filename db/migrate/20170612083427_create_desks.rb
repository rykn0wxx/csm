class CreateDesks < ActiveRecord::Migration[5.0]
  def self.up
    create_table :desks do |t|
      t.string :name
      t.string :code

      t.timestamps
    end
  end
  def self.down
    drop_table :desks
  end
end
