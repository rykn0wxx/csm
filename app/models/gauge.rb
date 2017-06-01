# == Schema Information
#
# Table name: gauges
#
#  id         :integer          not null, primary key
#  name       :string
#  subdomain  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Gauge < ApplicationRecord
  has_and_belongs_to_many :blocks, :autosave => true, :join_table => 'blocks_gauges'
end
