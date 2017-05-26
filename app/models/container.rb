# == Schema Information
#
# Table name: containers
#
#  id         :integer          not null, primary key
#  name       :string
#  order      :integer
#  portal_id  :integer
#  css_class  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_containers_on_portal_id  (portal_id)
#

class Container < ApplicationRecord
  belongs_to :portal
end
