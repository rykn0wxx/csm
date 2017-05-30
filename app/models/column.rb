# == Schema Information
#
# Table name: columns
#
#  id         :integer          not null, primary key
#  name       :string
#  row_id     :integer
#  position   :integer
#  css_class  :string
#  size_xs    :integer          default(12), not null
#  size_sm    :integer          default(12), not null
#  size_md    :integer          default(12), not null
#  size_lg    :integer          default(12), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_columns_on_row_id  (row_id)
#

class Column < ApplicationRecord
  belongs_to :row
  has_and_belongs_to_many :widget_types, :autosave => true, :join_table => 'columns_widget_types'

  acts_as_list scope: :row

  validates :name, presence: true
  validates :position, numericality: { :greater_than_or_equal_to => 1 }
  validates :size_xs, numericality: { :greater_than_or_equal_to => 1, :less_than_or_equal_to => 12 }
  validates :size_sm, numericality: { :greater_than_or_equal_to => 1, :less_than_or_equal_to => 12 }
  validates :size_md, numericality: { :greater_than_or_equal_to => 1, :less_than_or_equal_to => 12 }
  validates :size_lg, numericality: { :greater_than_or_equal_to => 1, :less_than_or_equal_to => 12 }
end
