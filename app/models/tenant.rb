# == Schema Information
#
# Table name: tenants
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Tenant < ApplicationRecord
  has_many :tenant_memberships
  has_many :users, through: :tenant_memberships

  validates :name, presence: true
end
