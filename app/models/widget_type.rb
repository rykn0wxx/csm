# == Schema Information
#
# Table name: widget_types
#
#  id           :integer          not null, primary key
#  name         :string
#  body         :text
#  partial_link :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class WidgetType < ApplicationRecord
  has_many :fields, :class_name => 'WidgetField'
  accepts_nested_attributes_for :fields, allow_destroy: true
end
