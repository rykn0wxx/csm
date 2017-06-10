class CreateTasks < ActiveRecord::Migration[5.0]
  def self.up
    create_table :tasks do |t|
      t.references :todo_list, foreign_key: true
      t.string :name
      t.text :description
      t.integer :position

      t.timestamps
    end
  end
  def self.down
    drop_table :tasks
  end
end
