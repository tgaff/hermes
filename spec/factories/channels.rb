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
FactoryBot.define do
  factory :channel do
    name { "MyString" }
    channel_group { nil }
  end
end
