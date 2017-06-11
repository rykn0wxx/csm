class CreateDashboards < ActiveRecord::Migration[5.0]
  def self.up
    create_table :dashboards do |t|
      t.references :client, foreign_key: true
      t.string :subdomain
      t.string :name

      t.timestamps
    end
  end
  def self.down
    drop_table :dashboards
  end
end
