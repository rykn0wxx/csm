class CreateTicketServices < ActiveRecord::Migration[5.0]
  def self.up
    create_table :ticket_services do |t|
      t.string :name

      t.timestamps
    end
  end
  def self.down
    drop_table :ticket_services
  end
end
