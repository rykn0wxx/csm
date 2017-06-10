# == Schema Information
#
# Table name: todo_lists
#
#  id         :integer          not null, primary key
#  portal_id  :integer
#  name       :string           default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_todo_lists_on_portal_id  (portal_id)
#

class TodoList < ApplicationRecord
  belongs_to :portal, optional: true
  has_many :tasks, dependent: :destroy
  accepts_nested_attributes_for :tasks, allow_destroy: true, reject_if: proc { |att| att['name'].blank? }
end
