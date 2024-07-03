# == Schema Information
#
# Table name: spaces
#
#  id            :bigint           not null, primary key
#  name          :string           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  created_by_id :bigint           not null
#  tenant_id     :bigint           not null
#
# Indexes
#
#  index_spaces_on_created_by_id  (created_by_id)
#  index_spaces_on_tenant_id      (tenant_id)
#
# Foreign Keys
#
#  fk_rails_...  (created_by_id => users.id)
#  fk_rails_...  (tenant_id => tenants.id)
#
FactoryBot.define do
  factory :space do
    sequence(:name) { |n| "Space ##{n}" }
    association :tenant
    association :created_by, factory: :user
  end
end
