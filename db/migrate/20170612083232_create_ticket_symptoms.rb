class CreateTicketSymptoms < ActiveRecord::Migration[5.0]
  def self.up
    create_table :ticket_symptoms do |t|
      t.string :name

      t.timestamps
    end
  end
  def self.down
    drop_table :ticket_symptoms
  end
end
