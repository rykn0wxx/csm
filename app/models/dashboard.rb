# == Schema Information
#
# Table name: dashboards
#
#  id         :integer          not null, primary key
#  client_id  :integer
#  name       :string           default(""), not null
#  published  :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_dashboards_on_client_id  (client_id)
#

class Dashboard < ApplicationRecord
  belongs_to :client
  # has_many :pages, dependent: :destroy
  # accepts_nested_attributes_for :pages, allow_destroy: true, reject_if: proc { |att| att['name'].blank? }

  validates :name, presence: true
end
