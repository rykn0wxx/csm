# == Schema Information
#
# Table name: projects
#
#  id         :integer          not null, primary key
#  name       :string
#  client_id  :integer
#  region_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_projects_on_client_id  (client_id)
#  index_projects_on_region_id  (region_id)
#

class Project < ApplicationRecord
  belongs_to :client
  belongs_to :region
end
