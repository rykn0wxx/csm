class CreateJoinTableRegionTicketRaw < ActiveRecord::Migration[5.0]
  def change
    create_join_table :regions, :ticket_raws do |t|
      # t.index [:region_id, :ticket_raw_id]
      # t.index [:ticket_raw_id, :region_id]
    end
  end
end
