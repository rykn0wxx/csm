# == Schema Information
#
# Table name: dashboards
#
#  id         :integer          not null, primary key
#  client_id  :integer
#  subdomain  :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_dashboards_on_client_id  (client_id)
#

class Dashboard < ApplicationRecord
  belongs_to :client
  has_many :pages

  validates :name, presence: true
end
