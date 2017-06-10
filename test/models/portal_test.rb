# == Schema Information
#
# Table name: portals
#
#  id         :integer          not null, primary key
#  name       :string           default(""), not null
#  published  :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class PortalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
