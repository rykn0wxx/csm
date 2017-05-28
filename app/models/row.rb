# == Schema Information
#
# Table name: rows
#
#  id           :integer          not null, primary key
#  name         :string
#  container_id :integer
#  position     :integer
#  row_class    :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_rows_on_container_id  (container_id)
#

class Row < ApplicationRecord
  belongs_to :container
  acts_as_list scope: :container

  has_many :columns

  validates :name, presence: true
  validates :position, numericality: { :greater_than_or_equal_to => 1 }
end
