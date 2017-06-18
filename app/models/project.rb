# == Schema Information
#
# Table name: projects
#
#  id         :integer          not null, primary key
#  region_id  :integer
#  client_id  :integer
#  name       :string
#  is_active  :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_projects_on_client_id  (client_id)
#  index_projects_on_region_id  (region_id)
#

class Project < ApplicationRecord
  belongs_to :region
  belongs_to :client

  validates :name, presence: true, uniqueness: true
end
