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
  has_and_belongs_to_many :columns, :autosave => true, :join_table => 'columns_widget_types'
  has_many :fields, :class_name => 'WidgetField'
  accepts_nested_attributes_for :fields, allow_destroy: true
  accepts_nested_attributes_for :columns, allow_destroy: true
end
