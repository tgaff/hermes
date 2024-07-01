FactoryBot.define do
  factory :tenant_membership do
    user { nil }
    tenant { nil }
    creator { false }
    admin { false }
  end
end
