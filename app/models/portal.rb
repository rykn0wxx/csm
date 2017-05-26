# == Schema Information
#
# Table name: portals
#
#  id                :integer          not null, primary key
#  title             :string
#  short_description :string
#  published         :boolean          default(FALSE)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Portal < ApplicationRecord

	has_many :containers

	validates :title, presence: true
	validates :short_description, presence: true
	validates :published, presence: true
end
