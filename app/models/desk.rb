# == Schema Information
#
# Table name: desks
#
#  id         :integer          not null, primary key
#  name       :string
#  code       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Desk < ApplicationRecord
  validates :name, presence: true
  validates :code, presence: true
end
