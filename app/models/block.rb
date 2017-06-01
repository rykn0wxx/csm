# == Schema Information
#
# Table name: blocks
#
#  id         :integer          not null, primary key
#  name       :string
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Block < ApplicationRecord
  has_and_belongs_to_many :gauge, :autosave => true, :join_table => 'blocks_gauges'
  has_many :fields, :class_name => 'BlockField'
  accepts_nested_attributes_for :fields, allow_destroy: true
end
