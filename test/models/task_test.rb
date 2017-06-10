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

require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
