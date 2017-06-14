class CreateContactTypes < ActiveRecord::Migration[5.0]
  def self.up
    create_table :contact_types do |t|
      t.string :name
      t.string :code

      t.timestamps
    end
  end
  def self.down
    drop_table :contact_types
  end
end
