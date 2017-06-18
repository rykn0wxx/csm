class CreatePages < ActiveRecord::Migration[5.0]
  def self.up
    create_table :pages do |t|
      t.string :name, null: false, default: ""
      t.integer :position, null: false
      t.boolean :published, default: false
      t.string :ancestry

      t.timestamps
    end
    add_index :pages, :ancestry
  end
  def self.down
    drop_table :pages
  end
end
