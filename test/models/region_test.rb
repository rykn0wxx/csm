# == Schema Information
#
# Table name: regions
#
#  id         :integer          not null, primary key
#  name       :string
#  code       :string
#  label      :string
#  is_active  :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class RegionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
