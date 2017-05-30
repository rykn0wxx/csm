class CreateWidgetFields < ActiveRecord::Migration[5.0]
  def self.up
    create_table :widget_fields do |t|
      t.string :name
      t.string :field_type
      t.boolean :required
      t.string :field_val
      t.references :widget_type, foreign_key: true

      t.timestamps
    end
  end
  def self.down
    drop_table :widget_fields
  end
end
