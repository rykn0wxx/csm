# == Schema Information
#
# Table name: tasks
#
#  id           :integer          not null, primary key
#  todo_list_id :integer
#  name         :string
#  description  :text
#  position     :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_tasks_on_todo_list_id  (todo_list_id)
#

class Task < ApplicationRecord
  belongs_to :todo_list, optional: true
  acts_as_list scope: :todo_list

  validates :position, numericality: { :greater_than_or_equal_to => 1 }
end
