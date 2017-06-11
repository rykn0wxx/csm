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

class Page < ApplicationRecord
  belongs_to :dashboard
end
