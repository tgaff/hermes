# == Schema Information
#
# Table name: channel_groups
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  space_id   :bigint           not null
#
# Indexes
#
#  index_channel_groups_on_space_id  (space_id)
#
# Foreign Keys
#
#  fk_rails_...  (space_id => spaces.id)
#
class ChannelGroup < ApplicationRecord
  belongs_to :space
  has_many :channels

  validates :name, presence: true
end
