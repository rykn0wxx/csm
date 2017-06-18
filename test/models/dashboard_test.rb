# == Schema Information
#
# Table name: dashboards
#
#  id         :integer          not null, primary key
#  client_id  :integer
#  name       :string           default(""), not null
#  published  :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_dashboards_on_client_id  (client_id)
#

require 'test_helper'

class DashboardTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
