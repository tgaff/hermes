class Tenant < ApplicationRecord
  has_many :tenant_memberships
  has_many :users, through: :tenant_memberships

  validates :name, presence: true
end
