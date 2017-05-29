# == Schema Information
#
# Table name: widget_fields
#
#  id             :integer          not null, primary key
#  name           :string
#  field_type     :string
#  required       :boolean
#  init_data      :text
#  widget_type_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_widget_fields_on_widget_type_id  (widget_type_id)
#

class WidgetField < ApplicationRecord
  belongs_to :widget_type
end
