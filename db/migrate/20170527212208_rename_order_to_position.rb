class RenameOrderToPosition < ActiveRecord::Migration[5.0]
  def self.up
    add_column :containers, :icon, :string
    rename_column :containers, :order, :position
  end
  def self.down
    remove_column :containers, :icon, :string
    rename_column :containers, :position, :order
  end
end
