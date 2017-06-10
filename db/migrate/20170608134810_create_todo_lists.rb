class CreateTodoLists < ActiveRecord::Migration[5.0]
  def self.up
    create_table :todo_lists do |t|
      t.references :portal, foreign_key: true
      t.string :name, null: false, default: ""

      t.timestamps
    end
  end
  def self.down
    drop_table :todo_lists
  end
end
