# == Schema Information
#
# Table name: regions
#
#  id         :integer          not null, primary key
#  name       :string
#  code       :string
#  label      :string
#  svg_path   :text
#  is_active  :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Region < ApplicationRecord
  has_many :projects
  
  validates :name, presence: true
  validates :code, presence: true
  validates :label, presence: true
end
