require 'rails_helper'

RSpec.describe "spaces/edit", type: :view do
  let(:space) {
    Space.create!(
      name: "MyString",
      tenant: nil,
      created_by: nil
    )
  }

  before(:each) do
    assign(:space, space)
  end

  it "renders the edit space form" do
    render

    assert_select "form[action=?][method=?]", space_path(space), "post" do
      assert_select "input[name=?]", "space[name]"

      assert_select "input[name=?]", "space[tenant_id]"

      assert_select "input[name=?]", "space[created_by_id]"
    end
  end
end
