class CreateSections < ActiveRecord::Migration[5.0]
  def self.up
    create_table :sections do |t|
      t.references :dashboard, foreign_key: true
      t.string :name
      t.string :ancestry

      t.timestamps
    end
    add_index :sections, :ancestry
  end
  def self.down
    drop_table :sections
  end
end
