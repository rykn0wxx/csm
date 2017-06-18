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

class Page < ApplicationRecord
  # attribute :dashboard_id, :integer
  # attribute :name, :string
  # attribute :position, :integer
  # attribute :published, :boolean
  # attribute :parent_id, :integer

  has_ancestry

  validates :name, presence: true
  validates :position, numericality: { :greater_than_or_equal_to => 1 }
end
