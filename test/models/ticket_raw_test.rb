# == Schema Information
#
# Table name: ticket_raws
#
#  id                :integer          not null, primary key
#  opened_at         :datetime
#  resolved_at       :datetime
#  ticket_service_id :integer
#  ticket_symptom_id :integer
#  ticket_type_id    :integer
#  contact_type_id   :integer
#  desk_id           :integer
#  client_id         :integer
#  region_id         :integer
#  group_name        :string
#  location          :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
# Indexes
#
#  index_ticket_raws_on_client_id          (client_id)
#  index_ticket_raws_on_contact_type_id    (contact_type_id)
#  index_ticket_raws_on_desk_id            (desk_id)
#  index_ticket_raws_on_region_id          (region_id)
#  index_ticket_raws_on_ticket_service_id  (ticket_service_id)
#  index_ticket_raws_on_ticket_symptom_id  (ticket_symptom_id)
#  index_ticket_raws_on_ticket_type_id     (ticket_type_id)
#

require 'test_helper'

class TicketRawTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
