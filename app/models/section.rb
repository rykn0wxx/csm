# == Schema Information
#
# Table name: sections
#
#  id           :integer          not null, primary key
#  dashboard_id :integer
#  name         :string
#  ancestry     :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_sections_on_ancestry      (ancestry)
#  index_sections_on_dashboard_id  (dashboard_id)
#

class Section < ApplicationRecord
  belongs_to :dashboard, optional: true

  has_ancestry
end
