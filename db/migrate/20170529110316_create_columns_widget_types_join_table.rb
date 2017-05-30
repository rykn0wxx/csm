class CreateColumnsWidgetTypesJoinTable < ActiveRecord::Migration[5.0]
  def self.up
    create_join_table :columns, :widget_types do |t|
      t.references :column, foreign_key: true
      t.references :widget_type, foreign_key: true
    end
  end
  def self.down
    drop_join_table :columns, :widget_types
  end
end
