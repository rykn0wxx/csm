# == Schema Information
#
# Table name: clients
#
#  id         :integer          not null, primary key
#  name       :string
#  is_active  :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Client < ApplicationRecord
  validates :name, presence: true
end
