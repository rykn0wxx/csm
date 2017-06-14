class CreateTicketRaws < ActiveRecord::Migration[5.0]
  def self.up
    create_table :ticket_raws do |t|
      t.datetime :opened_at
      t.datetime :resolved_at
      t.references :ticket_service, foreign_key: true
      t.references :ticket_symptom, foreign_key: true
      t.references :ticket_type, foreign_key: true
      t.references :contact_type, foreign_key: true
      t.references :desk, foreign_key: true
      t.references :client, foreign_key: true
      t.references :region, foreign_key: true
      t.string :group_name
      t.string :location

      t.timestamps
    end
  end
  def self.down
    drop_table :ticket_raws
  end
end
