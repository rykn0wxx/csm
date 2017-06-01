# == Schema Information
#
# Table name: block_fields
#
#  id         :integer          not null, primary key
#  block_id   :integer
#  name       :string
#  blk_key    :string
#  blk_val    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_block_fields_on_block_id  (block_id)
#

class BlockField < ApplicationRecord
  belongs_to :block, optional: true
end
