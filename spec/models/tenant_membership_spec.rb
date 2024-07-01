# == Schema Information
#
# Table name: tenant_memberships
#
#  id         :bigint           not null, primary key
#  admin      :boolean          default(FALSE), not null
#  creator    :boolean          default(FALSE), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  tenant_id  :bigint           not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_tenant_memberships_on_tenant_id  (tenant_id)
#  index_tenant_memberships_on_user_id    (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (tenant_id => tenants.id)
#  fk_rails_...  (user_id => users.id)
#
require 'rails_helper'

RSpec.describe TenantMembership, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
