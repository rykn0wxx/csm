# == Schema Information
#
# Table name: pages
#
#  id         :integer          not null, primary key
#  name       :string           default(""), not null
#  position   :integer          not null
#  published  :boolean          default(FALSE)
#  ancestry   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_pages_on_ancestry  (ancestry)
#

require 'test_helper'

class PageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
