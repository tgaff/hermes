class TenantMembership < ApplicationRecord
  belongs_to :user
  belongs_to :tenant
end
