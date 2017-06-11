# == Schema Information
#
# Table name: pages
#
#  id           :integer          not null, primary key
#  dashboard_id :integer
#  name         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_pages_on_dashboard_id  (dashboard_id)
#

require 'test_helper'

class PageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
