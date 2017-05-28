class CreateColumns < ActiveRecord::Migration[5.0]
  def self.up
    create_table :columns do |t|
      t.string :name
      t.references :row, foreign_key: true
      t.integer :position
      t.string :css_class
      t.integer :size_xs, null: false, default: 12
      t.integer :size_sm, null: false, default: 12
      t.integer :size_md, null: false, default: 12
      t.integer :size_lg, null: false, default: 12

      t.timestamps
    end
  end
  def self.down
    drop_table :columns
  end
end
