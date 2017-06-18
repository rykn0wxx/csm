# == Schema Information
#
# Table name: clients
#
#  id         :integer          not null, primary key
#  name       :string
#  is_active  :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Client < ApplicationRecord
  has_many :projects

  validates :name, presence: true, uniqueness: true
end
