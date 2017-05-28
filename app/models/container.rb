# == Schema Information
#
# Table name: containers
#
#  id         :integer          not null, primary key
#  name       :string
#  position   :integer
#  portal_id  :integer
#  css_class  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  icon       :string
#
# Indexes
#
#  index_containers_on_portal_id  (portal_id)
#

class Container < ApplicationRecord
  belongs_to :portal
  acts_as_list scope: :portal

  has_many :rows

  validates :name, presence: true
  validates :position, numericality: { :greater_than_or_equal_to => 1 }

end
