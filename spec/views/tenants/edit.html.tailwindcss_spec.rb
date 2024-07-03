require 'rails_helper'

RSpec.describe "tenants/edit", type: :view do
  let(:tenant) {
    Tenant.create!(
      name: "MyString"
    )
  }

  before(:each) do
    assign(:tenant, tenant)
  end

  it "renders the edit tenant form" do
    render

    assert_select "form[action=?][method=?]", tenant_path(tenant), "post" do
      assert_select "input[name=?]", "tenant[name]"
    end
  end
end
