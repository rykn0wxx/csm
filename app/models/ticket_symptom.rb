# == Schema Information
#
# Table name: ticket_symptoms
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TicketSymptom < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
