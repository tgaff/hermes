# == Schema Information
#
# Table name: channels
#
#  id               :bigint           not null, primary key
#  name             :string           not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  channel_group_id :bigint           not null
#
# Indexes
#
#  index_channels_on_channel_group_id  (channel_group_id)
#
# Foreign Keys
#
#  fk_rails_...  (channel_group_id => channel_groups.id)
#
require 'rails_helper'

RSpec.describe Channel, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
