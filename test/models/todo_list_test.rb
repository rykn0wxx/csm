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

require 'test_helper'

class TodoListTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
