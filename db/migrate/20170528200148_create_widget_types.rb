class CreateWidgetTypes < ActiveRecord::Migration[5.0]
  def self.up
    create_table :widget_types do |t|
      t.string :name
      t.text :body
      t.string :partial_link

      t.timestamps
    end
  end
  def self.down
    drop_table :widget_types
  end
end
